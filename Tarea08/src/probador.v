module probador(
    input [4:0] salida_gray_synth,
    input [4:0] salida_gray_con,
    input outChecker,
    output reg enable,
    output reg reset_L,
    output reg clk
	);

    initial begin
        $dumpfile ("prueba_1.vcd");
        $dumpvars;

        {reset_L, enable} = 1'b0;

        @(posedge clk)
            reset_L <= 1;

        @(posedge clk)
            enable <= 1;

        repeat (500) begin
            @(posedge clk);
        end 


        $finish;
    end

    initial	clk 	<= 0;			// Valor inicial al reloj.
	always	#5 clk 	<= ~clk;		// Hace "toggle" cada 2*10ns
endmodule