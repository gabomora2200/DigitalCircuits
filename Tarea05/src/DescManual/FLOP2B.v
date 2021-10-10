`include "DescManual/FLOP.v"

module FLOP_2B (
    output[1:0]out_flop,
    input [1:0]dataInD,
    input clk);

    FLOP flop_1(
        //output
        .out_flop (out_flop[0]),
        //input
        .D (dataInD[0]),
        .clk (clk)

    );
    FLOP flop_2(
        //output
        .out_flop (out_flop[1]),
        //input
        .D (dataInD[1]),
        .clk (clk)
    );
endmodule