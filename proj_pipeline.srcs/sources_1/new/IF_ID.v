`timescale 1ns / 1ps

`include "defines.vh"

module IF_ID(
    input wire rst,
    input wire clk,
    input wire pause,

    input wire [31: 0] pc_,
    input wire [31: 0] inst_,

    input wire pc_fresh
);

reg [31: 0] pc;
reg [31: 0] inst;
// reg fresh_inst;

always @(posedge rst or posedge clk) begin
    if(rst) begin
        pc <= 32'h0;
        inst <= 32'h0;
        // fresh_inst <= 1'b0;
    end else if(pause) begin
        pc <= pc;
        inst <= inst;
        // fresh_inst <= 1'b0;
    end else begin
        pc <= pc_;
        inst <= inst_;
        // fresh_inst <= pc_fresh;
    end
end

endmodule