module probador2 (
    input [1:0]outMux,
    input [1:0]outFlop,
    output reg [1:0]dataIn0,
    output reg [1:0]dataIn1,
    output reg selector,
    output reg clk
    );
    

    initial begin
        $dumpfile ("probador2.vcd");
        $dumpvars;
        selector <= 0;
        dataIn0 <= 11;
        dataIn1 <= 01;


        @(posedge clk)
            dataIn0 <= 00;
            dataIn1 <= 11;

        @(posedge clk)
            dataIn0 <= 10;
            dataIn1 <= 01;
        
        @(posedge clk)
            dataIn0 <= 00;
            dataIn1 <= 10;

        @(posedge clk)
            selector <= 1;
            dataIn0 <= 11;
            dataIn1 <= 00;

        @(posedge clk)
            dataIn0 <= 01;
            dataIn1 <= 10;

        @(posedge clk)
            dataIn0 <= 11;
            dataIn1 <= 01;
		
        @(posedge clk)  
            dataIn0 <= 10;
            dataIn1 <= 11;

        $finish;
    end
    initial	clk 	<= 0;			// Valor inicial al reloj, sino siempre ser� indeterminado
	always	#12 clk 	<= ~clk;	   // Hace "toggle" cada 2*10ns
endmodule