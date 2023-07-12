`timescale 1ns / 1ps

`include "defines.vh"

module PC(
    input wire rst,
    input wire clk,
    input wire pause,

    input wire [29: 0] npc,

    output reg [31: 0] pc
);

// reg fresh_inst;

always @(posedge rst or posedge clk) begin
    if(rst) begin
        pc <= 32'h0;
        // fresh_inst <= 1'b0;
    end else if(pause) begin
        pc <= pc;
        // fresh_inst <= 1'b0;
    end else begin
        pc <= {npc, 2'h0};
        // fresh_inst <= 1'b1;
    end
end

endmodule