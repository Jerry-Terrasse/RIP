`timescale 1ns / 1ps

`include "defines.vh"

module NPC(
    input wire [29: 0] pc,
    input wire jal,
    input wire [29: 0] pcjal,
    input wire b,
    input wire [29: 0] pcb, // Branch & jalr

    output reg [29: 0] npc,
);

always @(*) begin
    if(b) begin
        npc = pcb;
    end else if(jal) begin
        npc = pcjal;
    end else begin
        npc = pc + 1'h1; // pc + 4
    end
end

endmodule