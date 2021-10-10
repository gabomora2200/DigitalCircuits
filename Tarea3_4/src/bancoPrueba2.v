`timescale 	1ns	/ 100ps
`include "mux2b.v"
`include "FLOP2B.v"
`include "probador2.v"



module BancoPrueba;
    //wires para el multiplexor
    wire [1:0]outMux;
    wire [1:0]dataIn0;
    wire [1:0]dataIn1;
    wire selector;
    //wires para el flop de 2 bits
    wire [1:0]outFlop;
    wire clk;

    MUX_2B mux_2b(
        //output
        .dataOut (outMux[1:0]),
        //input
        .dataIn0 (dataIn0[1:0]),
        .dataIn1 (dataIn1[1:0]),
        .selector (selector)
    );
    FLOP_2B flop_2b(
        //output
        .out_flop (outFlop[1:0]),
        //input
        .dataInD (dataIn1[1:0]),
        .clk     (clk)
    );

    probador2 prob(/*AUTOINST*/
		  // Outputs
		  .dataIn0		(dataIn0[1:0]),
		  .dataIn1		(dataIn1[1:0]),
		  .selector		(selector),
		  .clk			(clk),
		  // Inputs
		  .outMux		(outMux[1:0]),
		  .outFlop      (outFlop[1:0]));
endmodule
