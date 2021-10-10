`include "Data_Bus.v"
`include "cmos_cells.v"
`include "Maquina_Estados.v"
`include "Data_Bus_Synth.v"
`include "Maquina_Estados_Synth.v"
`include "probador.v"

module Banco_Prueba;

	parameter BUS_SIZE = 16;
	parameter WORD_SIZE = 4;
    parameter WORD_NUM = BUS_SIZE / WORD_SIZE;

    wire reset, clk, err, next_err, err_sintetizado, next_err_sintetizado;
	wire [BUS_SIZE-1:0] data_in;
	wire [BUS_SIZE-1:0] data_out;
    wire [WORD_NUM-1:0] salida_control;
	wire [BUS_SIZE-1:0] data_out_sintetizado;
    wire [WORD_NUM-1:0] salida_control_sintetizado;

        Data_Bus bus1(/*AUTOINST*/
						// Outputs
						.data_out		(data_out[BUS_SIZE-1:0]),
						.salida_control	(salida_control[WORD_NUM-1:0]),
						// Inputs
						.clk			(clk),
						.reset			(reset),
						.data_in		(data_in[BUS_SIZE-1:0]));

        Data_Bus_Synth bus_synth(/*AUTOINST*/
										// Outputs
										.data_out_sintetizado		(data_out_sintetizado[15:0]),
										.salida_control_sintetizado	(salida_control_sintetizado[3:0]),
										// Inputs
										.clk		    (clk),
										.data_in		(data_in[15:0]),
										.reset		    (reset));

        Maquina_Estados maquina1(/*AUTOINST*/
								// Outputs
								.err			(err),
								.next_err		(next_err),
								// Inputs
								.clk			(clk),
								.reset			(reset),
								.data_in		(data_in[BUS_SIZE-1:0]));
        
        Maquina_Estados_Synth maquinasintetizado(/*AUTOINST*/
												// Outputs
												.err_sintetizado		(err_sintetizado),
												.next_err_sintetizado		(next_err_sintetizado),
												// Inputs
												.clk		(clk),
												.data_in		(data_in[15:0]),
												.reset		(reset));

        probador probador1(/*AUTOINST*/
							// Outputs
							.clk			(clk),
							.reset		(reset),
							.data_in		(data_in[BUS_SIZE-1:0]),
							// Inputs
							.data_out		(data_out[BUS_SIZE-1:0]),
							.salida_control	(salida_control[WORD_NUM-1:0]),
							.data_out_sintetizado(data_out_sintetizado[BUS_SIZE-1:0]),
							.salida_control_sintetizado(salida_control_sintetizado[WORD_NUM-1:0]),
							.err			(err),
							.next_err		(next_err),
							.err_sintetizado	(err_sintetizado),
							.next_err_sintetizado(next_err_sintetizado));
        
endmodule
