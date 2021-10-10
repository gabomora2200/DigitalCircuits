`timescale 	1ps	/ 1ps
`include "Mux2x1.v"
`include "probador.v"


module BancoPruebas;
    wire [1:0]dataOut;
    wire [1:0]dataIn0;
    wire [1:0]dataIn1;
    wire selector;
    wire reset;
    wire clk;

    Mux2x1 muxInst(/*AUTOINST*/
		   // Outputs
		   .dataOut		(dataOut[1:0]),
		   // Inputs
		   .dataIn0		(dataIn0[1:0]),
		   .dataIn1		(dataIn1[1:0]),
		   .selector		(selector),
		   .clk			(clk),
		   .reset		(reset));
    probador prob(/*AUTOINST*/
		  // Outputs
          .clk                   (clk),
		  .dataIn0		(dataIn0[1:0]),
		  .dataIn1		(dataIn1[1:0]),
		  .selector		(selector),
		  .reset		(reset),
		  // Inputs
		  .dataOut		(dataOut[1:0]));

endmodule
