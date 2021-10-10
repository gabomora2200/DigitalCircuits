
module probador3(
    output reg clk, 
    output reg reset, 
    output reg selector0, 
    output reg selector1, 
    output reg [3:0] dataIn0, 
    output reg [3:0] dataIn1,
    output reg [3:0] dataIn2, 
    output reg [3:0] dataIn3, 
    output reg validIN0,
    output reg validIN1,
    output reg validIN2,
    output reg validIN3,
    input [3:0] dataOutCond,
	input [3:0] dataOutSynth,
    input validOUT);

	initial begin
		
		$dumpfile("mux4_4bit.vcd");
		$dumpvars;
		$display ("\t\t\tclk,\tout,\treset,\tselector0,\tin0,\tin1");
		//$monitor($time,"\t%b\t%b\t\t%b\t%b\t%b\t%b", clk, dataOutCond,validOUT,validIN0,validIN1, selector0, reset, dataIn0, dataIn1);
		{selector0,selector1,reset} = 1'b0;
		{dataIn0,dataIn1,dataIn2,dataIn3} = 4'b0000;
		{validIN0,validIN1,validIN2,validIN3}=1'b1;


        @(posedge clk)
        reset <= 1;
        dataIn0 <= 4'b1101;
		dataIn1 <= 4'b1011;
        dataIn2 <= 4'b1001;
        dataIn3 <= 4'b1010;
        selector0 <= 0;
        selector1 <= 0;
		validIN0=1;
		validIN1=1;
        validIN2=1;
        validIN3=1;
		
        @(posedge clk)
        dataIn0 <= 4'b1101;
		dataIn1 <= 4'b1011;
        dataIn2 <= 4'b1001;
        dataIn3 <= 4'b1010;
        selector0 <= 1;
        selector1 <= 0;
		validIN0=1;
		validIN1=1;
        validIN2=1;
        validIN3=1;
        
        @(posedge clk)
        dataIn0 <= 4'b1101;
		dataIn1 <= 4'b1011;
        dataIn2 <= 4'b1001;
        dataIn3 <= 4'b1010;
        selector0 <= 0;
        selector1 <= 1;
		validIN0=1;
		validIN1=1;
        validIN2=1;
        validIN3=1;

        @(posedge clk)
        dataIn0 <= 4'b1101;
		dataIn1 <= 4'b1011;
        dataIn2 <= 4'b1001;
        dataIn3 <= 4'b1010;
        selector0 <= 0;
        selector1 <= 0;
		validIN0=0;
		validIN1=0;
        validIN2=0;
        validIN3=0;

        @(posedge clk)
        dataIn0 <= 4'b1101;
		dataIn1 <= 4'b1011;
        dataIn2 <= 4'b1001;
        dataIn3 <= 4'b1010;
        selector0 <= 1;
        selector1 <= 1;
		validIN0=1;
		validIN1=1;
        validIN2=1;
        validIN3=1;

        @(posedge clk)
        dataIn0 <= 4'b1101;
		dataIn1 <= 4'b1011;
        dataIn2 <= 4'b1001;
        dataIn3 <= 4'b1010;
        selector0 <= 1;
        selector1 <= 0;
		validIN0=0;
		validIN1=0;
        validIN2=0;
        validIN3=0;

		@(posedge clk)
        dataIn0 <= 4'b1101;
		dataIn1 <= 4'b1011;
        dataIn2 <= 4'b1001;
        dataIn3 <= 4'b1010;
        selector0 <= 0;
        selector1 <= 0;
		validIN0=0;
		validIN1=0;
        validIN2=0;
        validIN3=0;

		@(posedge clk)
        dataIn0 <= 4'b1101;
		dataIn1 <= 4'b1011;
        dataIn2 <= 4'b1001;
        dataIn3 <= 4'b1010;
        selector0 <= 1;
        selector1 <= 1;
		validIN0=0;
		validIN1=0;
        validIN2=0;
        validIN3=0;

        
		$finish;
	end
	//CHECKER		
	// Reloj
	initial	clk 	<= 0;			// Valor inicial al reloj, sino siempre ser� indeterminado
	always	#5 clk 	<= ~clk;
endmodule
 
