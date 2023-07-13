`timescale 1ns / 1ps

`include "defines.vh"

module myCPU (
    input  wire         cpu_rst,
    input  wire         cpu_clk,

    // Interface to IROM
    output wire [13:0]  if_inst_addr,
    input  wire [31:0]  if_inst,
    
    // Interface to Bridge
    output wire [31:0]  Bus_addr,
    input  wire [31:0]  Bus_rdata,
    output wire [3: 0]  Bus_wen,
    output wire [31:0]  Bus_wdata

`ifdef RUN_TRACE
    ,// Debug Interface
    output reg         debug_wb_have_inst,
    output reg [31:0]  debug_wb_pc,
    output reg          debug_wb_ena,
    output reg [ 4:0]  debug_wb_reg,
    output reg [31:0]  debug_wb_value
`endif
);

reg pc_pause;
reg id_pause;
reg ex_pause;
reg mem_pause;
reg id_nop;
reg ex_nop;

// ===================================== IF ======================================= 
wire [31: 0] if_pc;
assign if_inst_addr = if_pc[15: 2];

// NPC u_npc(.pc(pc[31: 2]), .offset(ext[31: 2]), .br(alu_f), .op(u_controller.npc_op));

wire id_jal;
wire [31: 0] id_pcjal;
reg ex_b;
reg [31: 0] ex_pcb;
NPC u_npc(
    .pc(if_pc[31: 2]),
    .jal(id_jal), .pcjal(id_pcjal[31: 2]),
    .b(ex_b), .pcb(ex_pcb[31: 2])
);

// wire [29: 0] pc_din = u_controller.pc_sel==`PC_NPC ? u_npc.npc : alu_c[31: 2];
PC u_pc(
    .rst(cpu_rst), .clk(cpu_clk), 
    .pause(pc_pause),
    .npc(u_npc.npc), .pc(if_pc)
);

IF_ID if_id(
    .rst(cpu_rst), .clk(cpu_clk),
    .pause(id_pause), .nop_(id_nop),

    // IF
    .inst_(if_inst), .pc_(if_pc)
);


// ===================================== ID ======================================= 
wire [31: 0] id_inst = if_id.inst;
Controller u_controller(.inst({id_inst[6: 0], id_inst[14: 12], id_inst[30]}));

wire [31: 0] id_ext;
SEXT u_sext(.op(u_controller.sext_op), .din(id_inst[31: 7]), .ext(id_ext));

// wire [31: 0] alu_c;
// wire alu_f;
// wire [31: 0] dram_rdo;
// reg [31: 0] rf_wd;
// always @(*) begin
//     case(u_controller.rf_wsel)
//         `RF_ALUC: rf_wd = alu_c;
//         `RF_ALUF: rf_wd = alu_f;
//         `RF_DRAM: rf_wd = dram_rdo;
//         `RF_SEXT: rf_wd = ext;
//         `RF_PC_4: rf_wd = u_npc.pc4;
//         `RF_PC_B: rf_wd = u_npc.pcb;
//         default: rf_wd = 32'h0;
//     endcase
// end
wire [4: 0] wb_wR;
wire wb_we;
reg [31: 0] wb_wD;
wire [4: 0] id_rR1 = id_inst[19:15];
wire [4: 0] id_rR2 = id_inst[24:20];
RF u_rf(
    .rst(cpu_rst), .clk(cpu_clk),
    .rR1(id_rR1), .rR2(id_rR2),
    .wR(wb_wR), .wD(wb_wD), .we(wb_we)
);

assign id_jal = u_controller.npc_op==`NPC_JMP;
assign id_pcjal = if_id.pc + id_ext;

ID_EX id_ex(
    .rst(cpu_rst), .clk(cpu_clk),
    .pause(ex_pause), .nop_(ex_nop | if_id.nop),
    
    // IF
    .pc_(if_id.pc),
    
    // ID
    .ext_(id_ext),
    .rf_wsel_(u_controller.rf_wsel), .rf_we_(u_controller.rf_we),
    .wR_(id_inst[11:7]),
    .rD1_(u_rf.rD1), .rD2_(u_rf.rD2),

    .alu_op_(u_controller.alu_op), .alub_sel_(u_controller.alub_sel),
    .pc_sel_(u_controller.pc_sel), .npc_op_(u_controller.npc_op), .br_sel_(u_controller.br_sel),
    .ram_mode_(u_controller.ram_mode)
);


// ===================================== EX ======================================= 
wire [31: 0] ex_alu_b = id_ex.alub_sel==`ALUB_RS2 ? id_ex.rD2 : id_ex.ext;
wire [31: 0] ex_alu_c;
ALU u_alu(.op(id_ex.alu_op), .A(id_ex.rD1), .B(ex_alu_b), .C(ex_alu_c));
assign ex_alu_f = id_ex.br_sel==`BR_SIGN ? u_alu.sf : u_alu.zf;

always @(*) begin
    if(id_ex.pc_sel == `PC_ALU) begin
        ex_b = 1'b1;
        ex_pcb = ex_alu_c;
    end else begin // id_ex.pc_sel == `PC_NPC
        case(id_ex.npc_op)
            `NPC_BR1: ex_b = ex_alu_f;
            `NPC_BR0: ex_b = ~ex_alu_f;
            default: ex_b = 1'b0;
        endcase
        ex_pcb = id_ex.pc + id_ex.ext;
    end
end

EX_MEM ex_mem(
    .rst(cpu_rst), .clk(cpu_clk),
    .pause(mem_pause), .nop_(id_ex.nop),
    
    // IF
    .pc_(id_ex.pc),

    // ID
    .ext_(id_ex.ext),
    .rf_wsel_(id_ex.rf_wsel), .rf_we_(id_ex.rf_we),
    .wR_(id_ex.wR),
    .rD2_(id_ex.rD2),
    .ram_mode_(id_ex.ram_mode),
    
    // EX
    .alu_c_(ex_alu_c), .alu_f_(ex_alu_f)
);


// ===================================== MEM ====================================== 
wire [31: 0] mem_dram_rdo;
DM u_dm(
    .op(ex_mem.ram_mode),
    .a_i(ex_mem.alu_c), .a_o(Bus_addr),
    .rdo(Bus_rdata), .rdo_ext(mem_dram_rdo),
    .wen(Bus_wen), .wdi(ex_mem.rD2), .wdo(Bus_wdata)
);

// MEM_WB mem_wb(
//     .rst(cpu_rst), .clk(cpu_clk),
//     .pause(wb_pause),
// );

// ===================================== WB ======================================= 
assign wb_wR = ex_mem.wR;
assign wb_we = ex_mem.rf_we;
always @(*) begin
    case(ex_mem.rf_wsel)
        `RF_ALUC: wb_wD = ex_mem.alu_c;
        `RF_ALUF: wb_wD = ex_mem.alu_f;
        `RF_DRAM: wb_wD = mem_dram_rdo; // MEM & WB are in the same stage
        `RF_SEXT: wb_wD = ex_mem.ext;
        `RF_PC_4: wb_wD = ex_mem.pc + 32'h4;
        `RF_PC_B: wb_wD = ex_mem.pc + ex_mem.ext;
        default : wb_wD = 32'h0;
    endcase
end

// ==================================== RISK ======================================
// assign pc_pause = 1'b0;
// assign id_pause = 1'b0;
// assign ex_pause = 1'b0;
// assign mem_pause = 1'b0;
// assign ex_nop = 1'b0;
always @(*) begin
    if(ex_b || id_jal) begin
        id_nop = 1'b1;
    end else begin
        id_nop = 1'b0;
    end
end

always @(*) begin
    if (ex_b) begin
        pc_pause = 1'b0;
        id_pause = 1'b0;
        // id_nop = 1'b1;
        ex_pause = 1'b0;
        ex_nop = 1'b1;
        mem_pause = 1'b0;
    end else if (id_jal) begin
        pc_pause = 1'b0;
        id_pause = 1'b0;
        // id_nop = 1'b1;
        ex_pause = 1'b0;
        ex_nop = 1'b0;
        mem_pause = 1'b0;
    end else if (
        ((id_ex.wR == id_rR1 || id_ex.wR == id_rR2) && id_ex.wR != 5'h0 && id_ex.rf_we) ||
        ((ex_mem.wR == id_rR1 || ex_mem.wR == id_rR2) && ex_mem.wR != 5'h0 && ex_mem.rf_we)
    ) begin
        pc_pause = 1'b1;
        id_pause = 1'b1;
        // id_nop = 1'b0;
        ex_pause = 1'b0;
        ex_nop = 1'b1;
        mem_pause = 1'b0;
    end else begin
        pc_pause = 1'b0;
        id_pause = 1'b0;
        // id_nop = 1'b0;
        ex_pause = 1'b0;
        ex_nop = 1'b0;
        mem_pause = 1'b0;
    end
end

`ifdef RUN_TRACE
    // Debug Interface
    always @(posedge cpu_rst or posedge cpu_clk) begin
        if(cpu_rst) begin
            debug_wb_have_inst <= 1'b0;
            debug_wb_pc <= 32'h0;
            debug_wb_ena <= 1'b0;
            debug_wb_reg <= 5'h0;
            debug_wb_value <= 32'h0;
        end else begin
            debug_wb_have_inst <= ~ex_mem.nop;
            debug_wb_pc <= ex_mem.pc;
            debug_wb_ena <= wb_we;
            debug_wb_reg <= wb_wR;
            debug_wb_value <= wb_wD;
        end
    end
    // assign debug_wb_have_inst = 1'b1;
    // assign debug_wb_pc        = pc;
    // assign debug_wb_ena       = u_controller.rf_we;
    // assign debug_wb_reg       = inst[11:7];
    // assign debug_wb_value     = rf_wd;
`endif

endmodule
