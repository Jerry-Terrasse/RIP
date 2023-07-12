`timescale 1ns / 1ps

`include "defines.vh"

module EX_MEM(
    input wire rst,
    input wire clk,
    input wire pause,
    input wire nop_,

    input wire [31: 0] pc_,

    input wire [31: 0] ext_,
    input wire [2: 0] rf_wsel_,
    input wire rf_we_,
    input wire [4: 0] wR_,
    input wire [31: 0] rD2_,
    input wire [2: 0] ram_mode_,

    input wire [31: 0] alu_c_,
    input wire alu_f_
);

reg nop;

reg [31: 0] pc;
reg [31: 0] ext;
reg [2: 0] rf_wsel;
reg rf_we;
reg [4: 0] wR;
reg [31: 0] rD2;
reg [2: 0] ram_mode;

reg [31: 0] alu_c;
reg alu_f;

always @(posedge rst or posedge clk) begin
    if(rst) begin
        nop <= 1'b1;
        pc <= 32'h0;
        ext <= 32'h0;   
        rf_wsel <= `RF_ALUC;
        rf_we <= `RF_RD;
        wR <= 5'h0;
        rD2 <= 32'h0;
        ram_mode <= `RAM_NO;

        alu_c <= 32'h0;
        alu_f <= 1'b0;
    end else if(nop) begin
        nop <= 1'b1;
        pc <= 32'h0;
        ext <= 32'h0;
        rf_wsel <= `RF_ALUC;
        rf_we <= `RF_RD;
        wR <= 5'h0;
        rD2 <= 32'h0;
        ram_mode <= `RAM_NO;

        alu_c <= 32'h0;
        alu_f <= 1'b0;
    end else if(pause) begin
        nop <= nop;
        pc <= pc;
        ext <= ext;
        rf_wsel <= rf_wsel;
        rf_we <= rf_we;
        wR <= wR;
        rD2 <= rD2;
        ram_mode <= ram_mode;

        alu_c <= alu_c;
        alu_f <= alu_f;
    end else begin
        nop <= nop_;
        pc <= pc_;
        ext <= ext_;
        rf_wsel <= rf_wsel_;
        rf_we <= rf_we_;
        wR <= wR_;
        rD2 <= rD2_;
        ram_mode <= ram_mode_;

        alu_c <= alu_c_;
        alu_f <= alu_f_;
    end
end

endmodule