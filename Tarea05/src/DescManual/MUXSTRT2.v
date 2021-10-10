`include "DescManual/mux2b.v"
`include "DescManual/FLOP2B.v"

module MuxStr_T2(
    output[1:0]dataOut,
    input [1:0]dataIn0,
    input [1:0]dataIn1,
    input selector,
    input clk,
    input reset);

    wire [1:0] A; // Conexion entre mux 1 u muxflop
    wire [1:0] B; // Conexion entre muxflop y el flip flop   

    MUX_2B muxStr(
        //output
        .dataOut  (A[1:0]),
        //input
        .dataIn0  (dataIn0[1:0]),
        .dataIn1  (dataIn1[1:0]),
        .selector (selector)
    );

    MUX_2B muxflop2b(
        //output
        .dataOut  (B[1:0]),
        //input
        .dataIn1  (A[1:0]),
        .dataIn0  (2'b00),
        .selector (reset)
    );

    FLOP_2B flopStr(
        //output
        .out_flop (dataOut[1:0]),
        //input
        .dataInD  (B[1:0]),
        .clk      (clk)
    );
endmodule