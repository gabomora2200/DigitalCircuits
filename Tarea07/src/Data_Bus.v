`include "palabra.v"

module Data_Bus #(
    //Definicion de parametros
	parameter BUS_SIZE = 16,
	parameter WORD_SIZE = 4,
    parameter WORD_NUM = BUS_SIZE / WORD_SIZE) 
    (
    //Definicion de entradas    
    input clk,
	input reset,
	input  [BUS_SIZE-1:0] data_in,
	output [BUS_SIZE-1:0] data_out,
    output [WORD_NUM-1:0] salida_control
    );
    genvar i;
    generate
	    for (i=0; i < WORD_NUM; i=i+1) begin : MEM
            palabra #(
                .BUS_SIZE(BUS_SIZE),
                .WORD_SIZE(WORD_SIZE)
            )
            palabra1 (
                .clk(clk),
                .reset(reset),
                .data_in(data_in[((WORD_SIZE*i)+(WORD_SIZE-1)):(WORD_SIZE*i)]),
                .data_out(data_out[(BUS_SIZE-1-i*WORD_SIZE):(WORD_NUM-i-1)*(WORD_SIZE)]),
                .salida_control(salida_control[(WORD_NUM-i-1):(WORD_NUM-i-1)])
            );
        end
    endgenerate
endmodule