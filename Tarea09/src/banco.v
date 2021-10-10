`include "sumador.v"
`include "cmos_cells.v"
`include "sumador_synth.v"
`include "probadorsumador.v"

module bancosumador;

    wire reset_L, clk;
    wire [3:0] data_A, data_B, sum_30_dd, idx, idx_dd, sum_30_dd_synth, idx_dd_synth;

    sumador sumadorcond(/*AUTOINST*/
			// Outputs
			.sum_30_dd	(sum_30_dd[3:0]),
			.idx_dd		(idx_dd[3:0]),
			// Inputs
			.clk		(clk),
			.reset_L	(reset_L),
			.idx		(idx[3:0]),
			.data_A		(data_A[3:0]),
			.data_B		(data_B[3:0]));

	sumador_synth sumadorsynth (/*AUTOINST*/
				    // Outputs
				    .idx_dd_synth		(idx_dd_synth[3:0]),
				    .sum_30_dd_synth	(sum_30_dd_synth[3:0]),
				    // Inputs
				    .clk		(clk),
				    .data_A		(data_A[3:0]),
				    .data_B		(data_B[3:0]),
				    .idx		(idx[3:0]),
				    .reset_L	(reset_L));

    probadorsumador probadorsumador1 (/*AUTOINST*/
				      // Outputs
				      .clk			(clk),
				      .reset_L		(reset_L),
				      .idx			(idx[3:0]),
				      .data_A		(data_A[3:0]),
				      .data_B		(data_B[3:0]),
				      // Inputs
				      .sum_30_dd		(sum_30_dd[3:0]),
				      .idx_dd			(idx_dd[3:0]),
				      .sum_30_dd_synth	(sum_30_dd_synth[3:0]),
				      .idx_dd_synth		(idx_dd_synth[3:0]));

endmodule
