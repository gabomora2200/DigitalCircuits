`include "sum_pipe.v"
`include "identificador.v"

module sumador(
	input clk,
	input reset_L,
	input [3:0] idx,
	input [3:0] data_A,
	input [3:0] data_B,
	output [3:0] sum_30_dd,
	output [3:0] idx_dd
);
    sum_pipe sum_pipe1  (/*AUTOINST*/
			 // Outputs
			 .sum_30_dd		(sum_30_dd[3:0]),
			 // Inputs
			 .clk			(clk),
			 .reset_L		(reset_L),
			 .data_A		(data_A[3:0]),
			 .data_B		(data_B[3:0]));
    
    identificador id1   (/*AUTOINST*/
			 // Outputs
			 .idx_dd		(idx_dd[3:0]),
			 // Inputs
			 .clk			(clk),
			 .reset_L		(reset_L),
			 .idx			(idx[3:0]));
endmodule
