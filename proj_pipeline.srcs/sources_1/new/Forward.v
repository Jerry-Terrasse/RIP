`timescale 1ns / 1ps

`include "defines.vh"

module Forward(
    input wire [4: 0] rR,
    input wire [31: 0] rf_rD,

    input wire ex_rf_we,
    input wire [4: 0] ex_wR,
    input wire [2: 0] ex_rf_wsel,
    input wire [31: 0] ex_alu_c,
    input wire ex_alu_f,
    input wire ex_pc,
    input wire ex_ext,

    input wire mem_rf_we,
    input wire [4: 0] mem_wR,
    input wire [2: 0] mem_rf_wsel,
    input wire [31: 0] mem_alu_c,
    input wire mem_alu_f,
    input wire mem_pc,
    input wire mem_ext,
    input wire [31: 0] mem_dram_rdo,

    output reg [31: 0] rD
);

always @(*) begin
    if(rR == 5'h0)
        rD = 32'h0;
    else if(ex_rf_we && ex_wR == rR && ex_rf_wsel != `RF_DRAM)
        case(ex_rf_wsel)
            `RF_ALUC: rD = ex_alu_c;
            `RF_ALUF: rD = ex_alu_f;
            `RF_SEXT: rD = ex_ext;
            `RF_PC_4: rD = ex_pc + 32'h4;
            `RF_PC_B: rD = ex_pc + ex_ext;
            default: rD = 32'h0;
        endcase
    else if(mem_rf_we && mem_wR == rR)
        case(ex_rf_wsel)
            `RF_ALUC: rD = mem_alu_c;
            `RF_ALUF: rD = mem_alu_f;
            `RF_DRAM: wb_wD = mem_dram_rdo;
            `RF_SEXT: rD = mem_ext;
            `RF_PC_4: rD = mem_pc + 32'h4;
            `RF_PC_B: rD = mem_pc + mem_ext;
            default: rD = 32'h0;
        endcase
    else
        rD = rf_rD;
end

endmodule