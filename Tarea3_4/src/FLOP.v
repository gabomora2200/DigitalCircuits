`timescale 1ns/100ps
module FLOP(
    output reg out_flop, 
    input D,
    input clk);

    always  @(posedge clk) 
        begin
            out_flop <= D;
        end
endmodule