`timescale 	1ns	/ 100ps

`include "probador3.v"
`include "MUXSTRT2.v" // Estructural Tarea3
`include "Mux2x1.v" // conductual tarea2
`include "checker.v"
`include "contador.v"


module BancoPrueba3;
    wire [1:0]dataIn0;
    wire [1:0]dataIn1;
    wire [1:0]dataOutEst;
    wire [1:0]dataOutCond;
    wire [4:0]contadorCond1;
    wire [4:0]contadorCond2;
    wire [4:0]contadorEst1;
    wire [4:0]contadorEst2;
    wire [4:0]contadorTotalEst;
    wire [4:0]contadorTotalCond;
    wire selector;
    wire clk;
    wire reset;
    wire outChecker;
    

    MuxStr_T2 mux_str_t2(
        //output
        .dataOut (dataOutEst[1:0]),
        //input
        .dataIn0 (dataIn0[1:0]),
        .dataIn1 (dataIn1[1:0]),
        .selector (selector),
        .clk      (clk),
        .reset    (reset)
    );
    Mux2x1 mux_cond_t2(
        //output
        .dataOut (dataOutCond[1:0]),
        //input
        .dataIn0 (dataIn0[1:0]),
        .dataIn1 (dataIn1[1:0]),
        .selector (selector),
        .clk      (clk),
        .reset    (reset)
    );
    checker checker_T4(
        //Outputs
        .outChecker    (outChecker),
        // Inputs
        .in_1 (dataOutEst[1:0]),
        .in_2 (dataOutCond[1:0]),
        .clk  (clk)
    );
    probador3 prob_T3(
        // Outputs
          .clk                        (clk),
		  .dataIn0		     (dataIn0[1:0]),
		  .dataIn1		     (dataIn1[1:0]),
          .contadorCond1     (contadorCond1[4:0]),    
          .contadorCond2     (contadorCond2[4:0]),
          .contadorEst1      (contadorEst1[4:0]),    
          .contadorEst2      (contadorEst2[4:0]),
		  .selector		     (selector),
		  .reset		     (reset),
		  // Inputs
		  .dataOutEst        (dataOutEst[1:0]),
          .dataOutCond       (dataOutCond[1:0]),
          .contadorTotalEst  (contadorTotalEst[4:0]),
          .contadorTotalCond (contadorTotalCond[4:0]),
          .outChecker        (outChecker)
    );
endmodule