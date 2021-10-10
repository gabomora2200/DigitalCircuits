`include "mux.v"

module MUX_2B (
    input [1:0]dataIn0,
    input [1:0]dataIn1,
    input selector,
    output [1:0]dataOut);

    //Se conectan 2 mux de 1 bit en paralelo
    MUX mux_2b_1(
        //output
        .dataOut (dataOut[0]),
        //input
        .dataIn0 (dataIn0[0]),
        .dataIn1 (dataIn1[0]),
        .selector (selector)
    );
    MUX mux_2b_2(
        //output
        .dataOut (dataOut[1]),
        //input
        .dataIn0 (dataIn0[1]),
        .dataIn1 (dataIn1[1]),
        .selector (selector)
    );
endmodule