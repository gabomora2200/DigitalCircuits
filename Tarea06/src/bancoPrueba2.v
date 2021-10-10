`timescale 	1ps	/ 1ps
`include "Mux2x1_4b.v"
`include "probador2.v"
`include "Mux2x1synth4b.v"
`include "cmos_cells.v"


module bancoPrueba;
    wire clk;
    wire reset;
    wire selector;
    wire [3:0] dataIn0; 
    wire [3:0] dataIn1; 
    wire validIN0;
    wire validIN1;
    wire [3:0] dataOutCond;
	wire [3:0] dataOutSynth;
    wire validOUT;

    Mux2x1_4b muxCond (/*AUTOINST*/
		    // Outputs
		    .dataOutCond	(dataOutCond[3:0]),
		    .validOUT		(validOUT),
		    // Inputs
		    .dataIn0		(dataIn0[3:0]),
		    .dataIn1		(dataIn1[3:0]),
		    .selector		(selector),
		    .clk		    (clk),
		    .reset		    (reset),
		    .validIN0		(validIN0),
		    .validIN1		(validIN1));
    
	Mux2x1synth4b muxSynth4b (/*AUTOINST*/
			    // Outputs
                .dataOutCond	(dataOutSynth[3:0]),
                .validOUT		(validOUT),
                // Inputs
                .dataIn0		(dataIn0[3:0]),
                .dataIn1		(dataIn1[3:0]),
                .selector		(selector),
                .clk		    (clk),
                .reset		    (reset),
                .validIN0		(validIN0),
                .validIN1		(validIN1));
                                            
    probador2 prob (/*AUTOINST*/
		   // Outputs
		   .clk			(clk),
		   .reset		(reset),
		   .selector		(selector),
		   .dataIn0		(dataIn0[3:0]),
		   .dataIn1		(dataIn1[3:0]),
		   .validIN0		(validIN0),
		   .validIN1		(validIN1),
		   // Inputs
		   .dataOutCond		(dataOutCond[3:0]),
		   .dataOutSynth	(dataOutSynth[3:0]),
		   .validOUT		(validOUT));
endmodule
