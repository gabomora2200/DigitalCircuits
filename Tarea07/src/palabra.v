module palabra #(
    //Definicion de parametros
	parameter BUS_SIZE = 16,
	parameter WORD_SIZE = 4,
    parameter WORD_NUM = BUS_SIZE / WORD_SIZE) 
    (
	input      clk,
	input      reset,
	input      [WORD_SIZE-1:0] data_in,
	output reg [WORD_SIZE-1:0] data_out,
    output reg salida_control
    );

    always @ (posedge clk) begin
      	if (reset == 0)begin
            data_out <= 0;
            salida_control <= 0;
        end else if (reset == 1) begin
            data_out <= data_in;
            salida_control <= data_in[0] | data_in[1] | data_in[2] | data_in[3];
        end
    end
endmodule