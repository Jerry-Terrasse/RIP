`timescale 1ns / 1ps

`include "defines.vh"

module ID_EX(
    input wire rst,
    input wire clk,
    input wire pause,

    input wire [31: 0] pc_,
    input wire [31: 0] wR_
);

reg [31: 0] pc;
reg [31: 0] wR;

always @(posedge rst or posedge clk) begin
    if(rst) begin
        pc <= 32'h0;
        wR <= 32'h0;
    end else if(pause) begin
        pc <= pc;
        wR <= wR;
    end else begin
        pc <= pc_;
        wR <= wR_;
    end
end

endmodule