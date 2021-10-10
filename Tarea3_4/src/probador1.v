module probador1 (
    input dataOut,
    input outNot,
    input outAnd,
    input outOr,
    input out_flop,
    output reg dataInA,
    output reg dataInB,
    output reg dataIn0,
    output reg dataIn1,
    output reg selector,
    output reg clk
    );
    

    initial begin
        $dumpfile ("probador1.vcd");
        $dumpvars;
        selector <= 0;
		dataInA <= 0;
		dataInB <= 0;
        dataIn0 <= 0;
        dataIn1 <= 0;


        @(posedge clk)
        dataInA <= 0;
        dataInB <= 1;
        dataIn0 <= 0;
        dataIn1 <= 1;

        @(posedge clk)
        dataInA <= 1;
        dataInB <= 0;
        dataIn0 <= 1;
        dataIn1 <= 0;
        
        @(posedge clk)
        dataInA <= 1;
        dataInB <= 1;
        dataIn0 <= 1;
        dataIn1 <= 1;

        @(posedge clk)
        selector <= 1;
        dataInA <= 0;
        dataInB <= 0;
        dataIn0 <= 0;
        dataIn1 <= 0;

        @(posedge clk)
        dataInA <= 0;
        dataInB <= 1;
        dataIn0 <= 0;
        dataIn1 <= 1;

        @(posedge clk)
        dataInA <= 1;
        dataInB <= 0;
        dataIn0 <= 1;
        dataIn1 <= 0;
		
        @(posedge clk)
		dataInA <= 1;
		dataInB <= 1;
        dataIn0 <= 1;
        dataIn1 <= 1;

        $finish;
    end
    initial	clk 	<= 0;			// Valor inicial al reloj, sino siempre ser� indeterminado
	always	#10 clk 	<= ~clk;	   // Hace "toggle" cada 2*10ns
endmodule