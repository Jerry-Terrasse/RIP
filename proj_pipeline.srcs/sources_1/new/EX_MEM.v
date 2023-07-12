`timescale 1ns / 1ps

`include "defines.vh"

module EX_MEM(
    input wire rst,
    input wire clk,
    input wire pause,

    input wire [31: 0] pc_
);

reg [31: 0] pc;

always @(posedge rst or posedge clk) begin
    if(rst) begin
        pc <= 32'h0;
    end else if(pause) begin
        pc <= pc;
    end else begin
        pc <= pc_;
    end
end

endmodule