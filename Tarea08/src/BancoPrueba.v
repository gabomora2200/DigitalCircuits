`timescale 	1ns	/ 1ns

`include "contador_gray_synth.v"
`include "contador_gray_con.v"
`include "checker.v"
`include "cmos_cells.v"
`include "probador.v"


module BancoPrueba;
	wire clk, reset_L, enable, outChecker;
	wire [4:0] salida_gray_cond, salida_gray_synth;

	contador_gray_cond						contador_cond( /*AUTOINST*/
								      // Outputs
								      .salida_gray		(salida_gray_cond[4:0]),
								      // Inputs
								      .enable		(enable),
								      .clk				(clk),
								      .reset_L		(reset_L));

	contador_gray_synth					contador_synth( /*AUTOINST*/
								      // Outputs
								      .salida_gray_synth		(salida_gray_synth[4:0]),
								      // Inputs
								      .enable		(enable),
								      .clk				(clk),
								      .reset_L		(reset_L));

	checker check(
		//Outputs
		.outChecker (outChecker),
		//Inputs
		.clk  (clk),
		.in_1 (salida_gray_cond[4:0]),
		.in_2 (salida_gray_synth[4:0])
	);


	probador 				probador( /*AUTOINST*/
							 // Outputs
							 .enable		(enable),
							 .reset_L		(reset_L),
							 .clk			(clk),
							 // Inputs
							 .salida_gray_con		(salida_gray_cond[4:0]),
							 .salida_gray_synth		(salida_gray_synth[4:0]));
endmodule
