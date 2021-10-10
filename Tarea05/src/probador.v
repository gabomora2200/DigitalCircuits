`include "checker.v"
module probador (
    input [1:0] dataOutEST,
    input [1:0] dataOutCond,
    input [1:0] dataOutMan,
    input outCheck,
    output reg [1:0]dataIn0,
    output reg [1:0]dataIn1,
    output reg selector,
    output reg reset,
    output reg clk);
    

    initial begin
        $dumpfile ("tarea05.vcd");
        $dumpvars;

        {reset,selector}=2'b0; //Pone un cero de 2 bits en el reset y en el selector
        {dataIn0,dataIn1} = 2'b0;

        repeat (1) begin //Proceso de sinc del reloj
            @(posedge clk);
                reset<=1;
                selector<=0;
        end 

        @(posedge clk)
            dataIn0 <= 2'b11;
            dataIn1 <= 2'b10;
		
        @(posedge clk)
            dataIn0 <= 2'b01;
            dataIn1 <= 2'b00;
            selector <= 1;
        
        @(posedge clk)
            dataIn0 <= 2'b00;
            dataIn1 <= 2'b10;
        
        @(posedge clk)
            dataIn0 <= 2'b11;
            dataIn1 <= 2'b11;
            selector <= 0;
        
        @(posedge clk)
            dataIn0 <= 2'b00;
            dataIn1 <= 2'b01;
            selector <= 1;

        @(posedge clk)
            dataIn0 <= 2'b10;
            dataIn1 <= 2'b00;
            selector <= 0;

		@(posedge clk)
            selector <= 1;

		@(posedge clk)
            dataIn0 <= 2'b10;
            dataIn1 <= 2'b00;
            selector <= 1;

        $finish;
    end

    initial	clk 	<= 0;			// Valor inicial al reloj.
	always	#10clk 	<= ~clk;		// Hace "toggle" cada 2*10ns


    checker check (
        //outputs
        .outChecker (outCheck),
        //inputs
        .in_1 (dataOutEST[1:0]),
        .in_2 (dataOutCond[1:0]),
        .clk (clk)
    );
endmodule