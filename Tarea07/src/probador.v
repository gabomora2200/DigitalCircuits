module probador #(
	parameter BUS_SIZE = 16,
	parameter WORD_SIZE = 4,
    parameter WORD_NUM = BUS_SIZE / WORD_SIZE
	) (
    output reg clk,
    output reg reset,
	output reg [BUS_SIZE-1:0] data_in,
	input [BUS_SIZE-1:0] data_out,
    input [WORD_NUM-1:0] salida_control,
	input [BUS_SIZE-1:0] data_out_sintetizado,
    input [WORD_NUM-1:0] salida_control_sintetizado,
    input err,
    input next_err,
    input err_sintetizado,
    input next_err_sintetizado);

    initial begin
        $dumpfile("tarea7.vcd");
        $dumpvars();
        
        reset <= 0;
        data_in <= 0;

        @(posedge clk);
        reset <= 0;

        @(posedge clk);
        reset <= 0;
        
        @(posedge clk);
        reset <= 1;
        data_in <= 'hFBA0;
        
        @(posedge clk);
        reset <= 1;
        data_in <= 'hFBB1;
        
        @(posedge clk);
        reset <= 1;
        data_in <= 'hFFF2;

        @(posedge clk);
        reset <= 1;
        data_in <= 'hA003;    

        @(posedge clk);
        reset <= 1;
        data_in <= 'hF0F0;   
    
        @(posedge clk);
        reset <= 1;
        data_in <= 'hFFF9;

        @(posedge clk);

        @(posedge clk);
        reset <=0;

        @(posedge clk);

        @(posedge clk);

        $finish;    
    end

    initial clk <= 0;
    always #1 clk <= ~clk; 

endmodule