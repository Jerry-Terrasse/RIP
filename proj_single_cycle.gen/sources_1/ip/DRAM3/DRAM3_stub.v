// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Jul 12 06:24:43 2023
// Host        : Mech-Win-Tera running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/proj_pipeline/proj_single_cycle.gen/sources_1/ip/DRAM3/DRAM3_stub.v
// Design      : DRAM3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.2" *)
module DRAM3(a, d, clk, we, spo)
/* synthesis syn_black_box black_box_pad_pin="a[13:0],d[7:0],clk,we,spo[7:0]" */;
  input [13:0]a;
  input [7:0]d;
  input clk;
  input we;
  output [7:0]spo;
endmodule
