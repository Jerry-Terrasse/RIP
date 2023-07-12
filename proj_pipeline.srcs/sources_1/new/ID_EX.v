`timescale 1ns / 1ps

`include "defines.vh"

module ID_EX(
    input wire rst,
    input wire clk,
    input wire pause,

    input wire [31: 0] pc_,

    input wire [31: 0] ext_,
    input wire [2: 0] rf_wsel_,
    input wire rf_we_,
    input wire [4: 0] wR_,
    input wire [31: 0] rD1_,
    input wire [31: 0] rD2_,

    input wire [3: 0] alu_op_,
    input wire alub_sel_,
    input wire pc_sel_,
    input wire [1: 0] npc_op_,
    input wire br_sel_,
    input wire [2: 0] ram_mode_
);

reg [31: 0] pc;
reg [31: 0] ext;
reg [2: 0] rf_wsel;
reg rf_we;
reg [4: 0] wR;
reg [31: 0] rD1;
reg [31: 0] rD2;

reg [3: 0] alu_op;
reg alub_sel;
reg pc_sel;
reg [1: 0] npc_op;
reg br_sel;
reg [2: 0] ram_mode;

always @(posedge rst or posedge clk) begin
    if(rst) begin
        pc <= 32'h0;
        ext <= 32'h0;
        rf_wsel <= `RF_ALUC;
        rf_we <= `RF_RD;
        wR <= 5'h0;
        rD1 <= 32'h0;
        rD2 <= 32'h0;

        alu_op <= `ALU_ADD;
        alub_sel <= `ALUB_RS2;
        pc_sel <= `PC_NPC;
        npc_op <= `NPC_PC4;
        br_sel <= `BR_SIGN;
        ram_mode <= `RAM_NO;
    end else if(pause) begin
        pc <= pc;
        ext <= ext;
        rf_wsel <= rf_wsel;
        rf_we <= rf_we;
        wR <= wR;
        rD1 <= rD1;
        rD2 <= rD2;

        alu_op <= alu_op;
        alub_sel <= alub_sel;
        pc_sel <= pc_sel;
        npc_op <= npc_op;
        br_sel <= br_sel;
        ram_mode <= ram_mode;
    end else begin
        pc <= pc_;
        ext <= ext_;
        rf_wsel <= rf_wsel_;
        rf_we <= rf_we_;
        wR <= wR_;
        rD1 <= rD1_;
        rD2 <= rD2_;
        alu_op <= alu_op_;
        alub_sel <= alub_sel_;
        pc_sel <= pc_sel_;
        npc_op <= npc_op_;
        br_sel <= br_sel_;
        ram_mode <= ram_mode_;
    end
end

endmodule