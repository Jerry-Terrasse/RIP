`timescale 1ns / 1ps

`include "defines.vh"

module miniRV_SoC (
    input  wire         fpga_rst,   // High active
    input  wire         fpga_clk,

    input  wire [23:0]  switches,
    input  wire [ 4:0]  button,
    output wire [ 7:0]  dig_en,
    output wire         DN_A,
    output wire         DN_B,
    output wire         DN_C,
    output wire         DN_D,
    output wire         DN_E,
    output wire         DN_F,
    output wire         DN_G,
    output wire         DN_DP,
    output wire [23:0]  led

`ifdef RUN_TRACE
    ,// Debug Interface
    output wire         debug_wb_have_inst, // 当前时钟周期是否有指令执行到WB阶段
    output wire [31:0]  debug_wb_pc,        // WB阶段的PC (若wb_have_inst=0，此项可为任意值)
    output              debug_wb_ena,       // WB阶段的寄存器写使能 (若wb_have_inst=0，此项可为任意值)
    output wire [ 4:0]  debug_wb_reg,       // WB阶段写入的寄存器号 (若wb_ena或wb_have_inst=0，此项可为任意值)
    output wire [31:0]  debug_wb_value      // WB阶段写入寄存器的值 (若wb_ena或wb_have_inst=0，此项可为任意值)
`endif
);

    wire        pll_lock;
    wire        pll_clk;
    wire        cpu_clk;

    // Interface between CPU and IROM
`ifdef RUN_TRACE
    wire [15:0] inst_addr;
`else
    wire [13:0] inst_addr;
`endif
    wire [31:0] inst;

    // Interface between CPU and Bridge
    wire [31:0] Bus_rdata;
    wire [31:0] Bus_addr;
    wire [3: 0] Bus_wen;
    wire [31:0] Bus_wdata;
    
    // Interface between bridge and DRAM
    // wire         rst_bridge2dram;
    wire         clk_bridge2dram;
    wire [31:0]  addr_bridge2dram;
    wire [31:0]  rdata_dram2bridge;
    wire [3: 0]  wen_bridge2dram;
    wire [31:0]  wdata_bridge2dram;
    
    // Interface between bridge and peripherals
    
    // Interface between bridge and 7-seg digital LEDs
    wire rst_bridge2dig;
    wire clk_bridge2dig;
    // wire [11:0] addr_bridge2dig;
    wire wen_bridge2dig;
    wire [31:0] wdata_bridge2dig;

    // Interface between bridge and LEDs
    wire rst_bridge2led;
    wire clk_bridge2led;
    wire wen_bridge2led;
    wire [31: 0] wdata_bridge2led;

    // Interface between bridge and switches
    wire rst_bridge2sw;
    wire clk_bridge2sw;
    wire [11: 0] addr_bridge2sw;
    wire [31: 0] rdata_from_sw;

    // Interface between bridge and buttons
    wire [31: 0] rdata_from_btn;

    
`ifdef RUN_TRACE
    // Trace调试时，直接使用外部输入时钟
    assign cpu_clk = fpga_clk;
`else
    // 下板时，使用PLL分频后的时钟
    assign cpu_clk = pll_clk & pll_lock;
    cpuclk Clkgen (
        // .resetn     (!fpga_rst),
        .clk_in1    (fpga_clk),
        .clk_out1   (pll_clk),
        .locked     (pll_lock)
    );
`endif
    
    myCPU Core_cpu (
        .cpu_rst            (fpga_rst),
        .cpu_clk            (cpu_clk),

        // Interface to IROM
        .if_inst_addr          (inst_addr[13: 0]),
        .if_inst               (inst),

        // Interface to Bridge
        .Bus_addr           (Bus_addr),
        .Bus_rdata          (Bus_rdata),
        .Bus_wen            (Bus_wen),
        .Bus_wdata          (Bus_wdata)

`ifdef RUN_TRACE
        ,// Debug Interface
        .debug_wb_have_inst (debug_wb_have_inst),
        .debug_wb_pc        (debug_wb_pc),
        .debug_wb_ena       (debug_wb_ena),
        .debug_wb_reg       (debug_wb_reg),
        .debug_wb_value     (debug_wb_value)
`endif
    );
    
    IROM Mem_IROM (
        .a          (inst_addr[13: 0]),
        .spo        (inst)
    );
    
    Bridge Bridge (       
        // Interface to CPU
        .rst_from_cpu       (fpga_rst),
        .clk_from_cpu       (cpu_clk),
        .addr_from_cpu      (Bus_addr),
        .wen_from_cpu       (Bus_wen),
        .wdata_from_cpu     (Bus_wdata),
        .rdata_to_cpu       (Bus_rdata),
        
        // Interface to DRAM
        // .rst_to_dram    (rst_bridge2dram),
        .clk_to_dram        (clk_bridge2dram),
        .addr_to_dram       (addr_bridge2dram),
        .rdata_from_dram    (rdata_dram2bridge),
        .wen_to_dram        (wen_bridge2dram),
        .wdata_to_dram      (wdata_bridge2dram),
        
        // Interface to 7-seg digital LEDs
        .rst_to_dig         (rst_bridge2dig),
        .clk_to_dig         (clk_bridge2dig),
        // .addr_to_dig        (addr_bridge2dig),
        .wen_to_dig         (wen_bridge2dig),
        .wdata_to_dig       (wdata_bridge2dig),

        // Interface to LEDs
        .rst_to_led         (rst_bridge2led),
        .clk_to_led         (clk_bridge2led),
        // .addr_to_led        (/* TODO */),
        .wen_to_led         (wen_bridge2led),
        .wdata_to_led       (wdata_bridge2led),

        // Interface to switches
        .rst_to_sw          (rst_bridge2sw),
        .clk_to_sw          (clk_bridge2sw),
        .addr_to_sw         (addr_bridge2sw),
        .rdata_from_sw      (rdata_from_sw),

        // Interface to buttons
        // .rst_to_btn         (/* TODO */),
        // .clk_to_btn         (/* TODO */),
        // .addr_to_btn        (/* TODO */),
        .rdata_from_btn     (rdata_from_btn)
    );

`ifdef ONBOARD_TRACE
    wire [31: 0] addr_tmp = addr_bridge2dram - 32'h4000;
`else
    wire [31: 0] addr_tmp = addr_bridge2dram;
`endif

    MaskedDRAM Mem_DRAM (
        .clk        (clk_bridge2dram),
        .a          (addr_tmp[15:2]),
        .spo        (rdata_dram2bridge),
        .we         (wen_bridge2dram),
        .d          (wdata_bridge2dram)
    );
    
    // 7-seg digital LEDs
    wire [7: 0] segs;
    dig_controller dig (
        .rst        (rst_bridge2dig),
        .clk        (clk_bridge2dig),
        .wen        (wen_bridge2dig),
        .wdata      (wdata_bridge2dig),
        .led        (segs),
        .led_en     (dig_en)
    );
    assign DN_A = segs[7];
    assign DN_B = segs[6];
    assign DN_C = segs[5];
    assign DN_D = segs[4];
    assign DN_E = segs[3];
    assign DN_F = segs[2];
    assign DN_G = segs[1];
    assign DN_DP= segs[0];

    // LEDs
    LED Led (
        .rst        (rst_bridge2led),
        .clk        (clk_bridge2led),
        .wen        (wen_bridge2led),
        .wdata      (wdata_bridge2led),
        .led        (led)
    );

    // Switches
    Switches Sw (
        .rst        (rst_bridge2sw),
        .clk        (clk_bridge2sw),
        .adr       (addr_bridge2sw),
        .sw         (switches),
        .rdata      (rdata_from_sw)
    );

    // Buttons
//    Buttons Btn (
//        .btn        (button),
//        .rdata      (rdata_from_btn)
//    );

endmodule
