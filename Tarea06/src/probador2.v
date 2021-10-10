
module probador2(
    output reg clk, 
    output reg reset, 
    output reg selector, 
    output reg [3:0] dataIn0, 
    output reg [3:0] dataIn1, 
    output reg validIN0,
    output reg validIN1,
    input [3:0] dataOutCond,
	input [3:0] dataOutSynth,
    input validOUT);

	initial begin
		
		$dumpfile("mux2_4bit.vcd");
		$dumpvars;
		$display ("\t\t\tclk,\tout,\treset,\tselector,\tin0,\tin1");
		$monitor($time,"\t%b\t%b\t\t%b\t%b\t%b\t%b", clk, dataOutCond,validOUT,validIN0,validIN1, selector, reset, dataIn0, dataIn1);
		{selector, reset} = 2'b0;
		{dataIn0,dataIn1} = 4'b0000;
		{validIN0,validIN1}=2'b1;

		repeat (1) begin		
            @(posedge clk);	
            reset <= 1; 
            selector <= 1; 
		end

		

        @(posedge clk)
        dataIn0 <= 4'b1111;
		dataIn1 <= 4'b1010;
        selector <= 1;
		validIN0=1;
		validIN1=1;
		
        @(posedge clk)
        dataIn0 <= 4'b0101;
		dataIn1 <= 4'b0000;
        selector <= 0;
		validIN0=1;
		validIN1=1;		
        
        @(posedge clk)
        dataIn0 <= 4'b0011;
		dataIn1 <= 4'b1011;
		selector <= 0;
		validIN0=1;
		validIN1=1;

        @(posedge clk)
        dataIn0 <= 4'b0111;
		dataIn1 <= 4'b1100;
        selector <= 0;
		validIN0=1;
		validIN1=1;        

        @(posedge clk)
        dataIn0 <= 4'b1101;
		dataIn1 <= 4'b1011;
        selector <= 1;
		validIN0=0;
		validIN1=0;

        @(posedge clk)
        dataIn0 <= 4'b1000;
		dataIn1 <= 4'b1111;
        selector <= 0;
		validIN0=0;
		validIN1=0;

		@(posedge clk)
        selector <= 1;
		validIN0=0;
		validIN1=0;

		@(posedge clk)
        dataIn0 <= 4'b1111;
		dataIn1 <= 4'b0011;
        selector <= 1;
		validIN0=1;
		validIN1=1;

        
		$finish;
	end
	//CHECKER		
	// Reloj
	initial	clk 	<= 0;			// Valor inicial al reloj, sino siempre ser� indeterminado
	always	#5 clk 	<= ~clk;
endmodule
 
