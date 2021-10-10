`include "Mux2x1.v"

module Mux2x1_4b(
    output [3:0]dataOutCond,
    output validOUT,
    input [3:0]dataIn0,
    input [3:0]dataIn1,
    input selector,
    input clk,
    input reset,
    input validIN0,
    input validIN1);

    Mux2x1 mux1(
        //output
        .dataOutCond (dataOutCond[1:0]),
        .validOUT    (validOUT),
        //input
        .dataIn0     (dataIn0[1:0]),
        .dataIn1     (dataIn1[1:0]),
        .selector    (selector),
        .clk         (clk),
        .reset       (reset),
        .validIN0    (validIN0),
        .validIN1    (validIN1));
    Mux2x1 mux2(
        //output
        .dataOutCond (dataOutCond[3:2]),
        .validOUT    (validOUT),
        //input
        .dataIn0     (dataIn0[3:2]),
        .dataIn1     (dataIn1[3:2]),
        .selector    (selector),
        .clk         (clk),
        .reset       (reset),
        .validIN0    (validIN0),
        .validIN1    (validIN1)
    );
endmodule