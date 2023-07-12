`timescale 1ns / 1ps

`include "defines.vh"

module IF_ID(
    input wire rst,
    input wire clk,
    input wire pause,

    input wire [31: 0] pc_,
    input wire [31: 0] inst_
);

reg [31: 0] pc;
reg [31: 0] inst;

always @(posedge rst or posedge clk) begin
    if(rst) begin
        pc <= 32'h0;
        inst <= 32'h0;
    end else if(pause) begin
        pc <= pc;
        inst <= inst;
    end else begin
        pc <= pc_;
        inst <= inst_;
    end
end

endmodule