`timescale 1ns / 1ps

`include "defines.vh"

module IF_ID(
    input wire rst,
    input wire clk,
    input wire pause,
    input wire nop_,

    input wire [31: 0] pc_,
    input wire [31: 0] inst_,

    input wire pc_fresh
);

reg nop;

reg [31: 0] pc;
reg [31: 0] inst;

always @(posedge rst or posedge clk) begin
    if(rst) begin
        nop <= 1'b1;
        pc <= 32'h0;
        inst <= 32'h0;
    end else if(nop) begin
        nop <= 1'b1;
        pc <= 32'h0;
        inst <= 32'h0;
    end else if(pause) begin
        nop <= nop;
        pc <= pc;
        inst <= inst;
    end else begin
        nop <= nop_;
        pc <= pc_;
        inst <= inst_;
    end
end

endmodule