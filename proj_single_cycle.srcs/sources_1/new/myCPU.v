`timescale 1ns / 1ps

`include "defines.vh"

module myCPU (
    input  wire         cpu_rst,
    input  wire         cpu_clk,

    // Interface to IROM
    output wire [13:0]  inst_addr,
    input  wire [31:0]  inst,
    
    // Interface to Bridge
    output wire [31:0]  Bus_addr,
    input  wire [31:0]  Bus_rdata,
    output wire         Bus_wen,
    output wire [31:0]  Bus_wdata

`ifdef RUN_TRACE
    ,// Debug Interface
    output wire         debug_wb_have_inst,
    output wire [31:0]  debug_wb_pc,
    output              debug_wb_ena,
    output wire [ 4:0]  debug_wb_reg,
    output wire [31:0]  debug_wb_value
`endif
);

    // TODO: ������Լ��ĵ�����CPU���
    //

`ifdef RUN_TRACE
    // Debug Interface
    assign debug_wb_have_inst = /* TODO */;
    assign debug_wb_pc        = /* TODO */;
    assign debug_wb_ena       = /* TODO */;
    assign debug_wb_reg       = /* TODO */;
    assign debug_wb_value     = /* TODO */;
`endif

endmodule
