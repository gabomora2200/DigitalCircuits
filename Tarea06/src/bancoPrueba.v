`timescale 	1ps	/ 1ps
`include "cmos_cells.v"
`include "Mux2x1synth.v"
`include "Mux2x1.v"
`include "probador.v"



module bancoPrueba;
    wire clk;
    wire reset;
    wire selector;
    wire [1:0] dataIn0; 
    wire [1:0] dataIn1; 
    wire validIN0;
    wire validIN1;
    wire [1:0] dataOutCond;
	wire [1:0] dataOutSynth;
    wire validOUT;

    Mux2x1 muxCond (/*AUTOINST*/
		    // Outputs
		    .dataOutCond	(dataOutCond[1:0]),
		    .validOUT		(validOUT),
		    // Inputs
		    .dataIn0		(dataIn0[1:0]),
		    .dataIn1		(dataIn1[1:0]),
		    .selector		(selector),
		    .clk		(clk),
		    .reset		(reset),
		    .validIN0		(validIN0),
		    .validIN1		(validIN1));

	Mux2x1synth muxSynth (/*AUTOINST*/
			      // Outputs
			      .dataOutSynth	(dataOutSynth[1:0]),
			      .validOUT		(validOUT),
			      // Inputs
			      .clk		(clk),
			      .dataIn0		(dataIn0[1:0]),
			      .dataIn1		(dataIn1[1:0]),
			      .reset		(reset),
			      .selector		(selector),
			      .validIN0		(validIN0),
			      .validIN1		(validIN1));

    probador prob (/*AUTOINST*/
		   // Outputs
		   .clk			(clk),
		   .reset		(reset),
		   .selector		(selector),
		   .dataIn0		(dataIn0[1:0]),
		   .dataIn1		(dataIn1[1:0]),
		   .validIN0		(validIN0),
		   .validIN1		(validIN1),
		   // Inputs
		   .dataOutCond		(dataOutCond[1:0]),
		   .dataOutSynth	(dataOutSynth[1:0]),
		   .validOUT		(validOUT));
endmodule
