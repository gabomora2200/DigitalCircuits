`timescale 	1ps	/ 1ps
`include "Mux4x1.v"
`include "probador3.v"
`include "Mux4x1synth.v"
`include "cmos_cells.v"

module bancoPrueba;
    wire clk;
    wire reset;
    wire selector0;
    wire selector1;
    wire [3:0] dataIn0; 
    wire [3:0] dataIn1; 
    wire [3:0] dataIn2; 
    wire [3:0] dataIn3; 
    wire validIN0;
    wire validIN1;
    wire validIN2;
    wire validIN3;
    wire [3:0] dataOutCond;
	wire [3:0] dataOutSynth;
    wire validOUT;

    Mux4x1 muxCond (/*AUTOINST*/
		    // Outputs
		    .dataOutCond	(dataOutCond[3:0]),
		    .validOUT		(validOUT),
		    // Inputs
		    .dataIn0		(dataIn0[3:0]),
		    .dataIn1		(dataIn1[3:0]),
            .dataIn2		(dataIn2[3:0]),
		    .dataIn3		(dataIn3[3:0]),
		    .selector0		(selector0),
            .selector1		(selector1),
		    .clk		    (clk),
		    .reset		    (reset),
		    .validIN0		(validIN0),
		    .validIN1		(validIN1),
            .validIN2		(validIN2),
		    .validIN3		(validIN3)
            );
    
	Mux4x1synth muxSynth4x1 (/*AUTOINST*/
			    // Outputs
                .dataOutCond	(dataOutSynth[3:0]),
                .validOUT		(validOUT),
                // Inputs
                .dataIn0		(dataIn0[3:0]),
                .dataIn1		(dataIn1[3:0]),
                .dataIn2		(dataIn2[3:0]),
                .dataIn3		(dataIn3[3:0]),
                .selector0		(selector0),
                .selector1		(selector1),
                .clk		    (clk),
                .reset		    (reset),
                .validIN0		(validIN0),
                .validIN1		(validIN1),
                .validIN2		(validIN2),
                .validIN3		(validIN3)
            );
                                            
    probador3 prob (/*AUTOINST*/
		   // Outputs
		   .clk			         (clk),
		   .reset		       (reset),
		   .selector0   (selector0),
           .selector1   (selector1),
		   .dataIn0		(dataIn0[3:0]),
		   .dataIn1		(dataIn1[3:0]),
           .dataIn2		(dataIn2[3:0]),
		   .dataIn3		(dataIn3[3:0]),
		   .validIN0		(validIN0),
		   .validIN1		(validIN1),
           .validIN2		(validIN2),
		   .validIN3		(validIN3),
		   // Inputs
		   .dataOutCond		(dataOutCond[3:0]),
		   .dataOutSynth	(dataOutSynth[3:0]),
		   .validOUT		(validOUT));
endmodule
