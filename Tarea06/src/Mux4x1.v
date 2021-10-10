`include "Mux2x1_4b.v"

module Mux4x1(
    output [3:0]dataOutCond,
    output validOUT,
    input  [3:0]dataIn0,
    input  [3:0]dataIn1,
    input  [3:0]dataIn2,
    input  [3:0]dataIn3,
    input  selector0,
    input  selector1,
    input  clk,
    input  reset,
    input  validIN0,
    input  validIN1,
    input  validIN2,
    input  validIN3);

    wire [3:0] dataOutMux1;
    wire [3:0] dataOutMux2;
    wire validOutMux1;
    wire validOutMux2;

    Mux2x1_4b mux1(
        //output
        .dataOutCond (dataOutMux1[3:0]),
        .validOUT    (validOutMux1),
        //input
        .dataIn0     (dataIn0[3:0]),
        .dataIn1     (dataIn1[3:0]),
        .selector    (selector0),
        .clk         (clk),
        .reset       (reset),
        .validIN0    (validIN0),
        .validIN1    (validIN1)
    );
    Mux2x1_4b mux2(
        //output
        .dataOutCond (dataOutMux2[3:0]),
        .validOUT    (validOutMux2),
        //input
        .dataIn0     (dataIn2[3:0]),
        .dataIn1     (dataIn3[3:0]),
        .selector    (selector0),
        .clk         (clk),
        .reset       (reset),
        .validIN0    (validIN2),
        .validIN1    (validIN3)
    );
    Mux2x1_4b mux3(
        //output
        .dataOutCond (dataOutCond[3:0]),
        .validOUT    (validOUT),
        //input
        .dataIn0     (dataOutMux1[3:0]),
        .dataIn1     (dataOutMux2[3:0]),
        .selector    (selector1),
        .clk         (clk),
        .reset       (reset),
        .validIN0    (validOutMux1),
        .validIN1    (validOutMux2)
    );
endmodule

