`timescale 	1ns	/ 100ps
`include "mux.v"
`include "FLOP.v"
`include "probador1.v"



module BancoPrueba;
    //wires para el not
    wire outNot;
    //wires para el and
    wire dataInA;
    wire dataInB;
    wire outAnd;
    //wires para el or
    wire outOr; 
    //wires para el multiplexor
    wire dataOut;
    wire dataIn0;
    wire dataIn1;
    wire selector;

    //wires para el flip-flop
    wire out_flop;
    wire clk;

    NOT not_prueba(
        //output
        .out(outNot),
        //input
        .in (dataInA)
    );
    AND and_prueba(
        //output
        .out (outAnd),
        //input
        .A (dataInA),
        .B (dataInB)
    );
    OR or_prueba(
        //output
        .out (outOr),
        //input
        .A (dataInA),
        .B (dataInB)
    );
    MUX mux_1(
        //output
        .dataOut (dataOut),
        //input
        .dataIn0 (dataIn0),
        .dataIn1 (dataIn1),
        .selector (selector)
    );
    FLOP flip_1(
        //output
        .out_flop (out_flop),
        //input
        .D (dataIn1),
        .clk (clk)
    );

    probador1 prob(/*AUTOINST*/
		  // Outputs
		  .dataInA		(dataInA),
		  .dataInB		(dataInB),
		  .dataIn0		(dataIn0),
		  .dataIn1		(dataIn1),
		  .selector		(selector),
		  .clk			(clk),
		  // Inputs
		  .dataOut		(dataOut),
		  .outNot		(outNot),
		  .outAnd		(outAnd),
		  .outOr		(outOr),
          .out_flop     (out_flop));
endmodule
