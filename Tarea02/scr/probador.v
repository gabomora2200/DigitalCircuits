module probador (
    input [1:0] dataOut,
    output reg [1:0]dataIn0,
    output reg [1:0]dataIn1,
    output reg selector,
    output reg reset,
    output reg clk);
    

    initial begin
        $dumpfile ("tarea02.vcd");
        $dumpvars;
        $display ("\t\t\tclk,\tdataOut,\tdataIn0,\tdataIn1,\tselector,\treset");
        $monitor($time,"\t%b\t%b\t\t%b\t\t%b\t%b\t%b", clk, dataOut, dataIn0,dataIn1, selector, reset);

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
	always	#1 clk 	<= ~clk;		// Hace "toggle" cada 2*10ns
endmodule