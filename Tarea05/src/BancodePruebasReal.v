`timescale 	1ns/ 1ns
`include "Mux2x1.v"
`include "DescManual/MUXSTRT2.v"
`include "probador.v"
`include "sintetizadoReal.v"


module BancoPruebas;
    wire [1:0]dataOutCond;
	wire [1:0]dataOutEST;
	wire [1:0]dataOutMan;
    wire [1:0]dataIn0;
    wire [1:0]dataIn1;
	wire outCheck;
    wire selector;
    wire reset;
    wire clk;

    Mux2x1 muxInst(/*AUTOINST*/
		   // Outputs
		   .dataOut		(dataOutCond[1:0]),
		   // Inputs
		   .dataIn0		    (dataIn0[1:0]),
		   .dataIn1		    (dataIn1[1:0]),
		   .selector		    (selector),
		   .clk			             (clk),
		   .reset		           (reset));

	Mux2x1_Estructural_Sintetizado muxInstEst(/*AUTOINST*/
			// Outputs
		   .dataOut		(dataOutEST[1:0]),
		   	// Inputs
		   .dataIn0		(dataIn0[1:0]),
		   .dataIn1		(dataIn1[1:0]),
		   .selector		(selector),
		   .clk			         (clk),
		   .reset		       (reset));
	MuxStr_T2 mux_Manual (
			// Outputs
		   .dataOut		(dataOutMan[1:0]),
		   // Inputs
		   .dataIn0		   (dataIn0[1:0]),
		   .dataIn1		   (dataIn1[1:0]),
		   .selector		   (selector),
		   .clk			            (clk),
		   .reset			      (reset));
    probador prob(/*AUTOINST*/
		  // Outputs
          .clk                          (clk),
		  .dataIn0		       (dataIn0[1:0]),
		  .dataIn1		       (dataIn1[1:0]),
		  .selector		           (selector),
		  .reset		              (reset),
		  // Inputs
		  .dataOutCond		(dataOutCond[1:0]),
		  .dataOutEST       (dataOutEST[1:0]),
		  .dataOutMan       (dataOutMan[1:0]),
		  .outCheck         (outCheck));


endmodule
