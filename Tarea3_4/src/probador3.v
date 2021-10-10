module probador3 (
    input [1:0] dataOutEst,
    input [1:0] dataOutCond,
    input outChecker,
    input [4:0]contadorTotalEst,
    input [4:0]contadorTotalCond,
    output reg [4:0]contadorCond1,
    output reg [4:0]contadorCond2,
    output reg [4:0]contadorEst1,
    output reg [4:0]contadorEst2,
    output reg [1:0]dataIn0,
    output reg [1:0]dataIn1,
    output reg selector,
    output reg reset,
    output reg clk
    );

    initial begin
        $dumpfile ("probador3.vcd");
        $dumpvars;

        {reset,selector}=2'b0; //Pone un cero de 2 bits en el reset y en el selector
        {dataIn0,dataIn1} = 2'b0;
        {contadorCond1,contadorCond2,contadorEst1,contadorEst2} = 5'b0;

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

    //Contador Conductual
    always @(posedge dataOutCond[0]) begin
        contadorCond1 <= contadorCond1 + 1;
    end
    always @(posedge dataOutCond[1]) begin
        contadorCond2 <= contadorCond2 + 1;
    end
    assign contadorTotalCond = contadorCond1 + contadorCond2;

    //Contador Estructural
    always @(posedge dataOutEst[0]) begin
        contadorEst1 <= contadorEst1 + 1;
    end
    always @(posedge dataOutEst[1]) begin
        contadorEst2 <= contadorEst2 + 1;
    end
    assign contadorTotalEst = contadorEst1 + contadorEst2;

    //Reloj
    initial	clk 	<= 0;			// Valor inicial al reloj.
	always	#20 clk <= ~clk;		// Hace "toggle" cada 2*10ns

endmodule