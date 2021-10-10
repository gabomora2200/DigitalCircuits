`include "DescManual/not.v"
`include "DescManual/or.v"
`include "DescManual/and.v"

module MUX (  
    output dataOut,
    input dataIn0,
    input dataIn1,
    input selector);

    //Compuerta Not
    wire outNot;
    NOT_MAN not_1(
        //output
        .out (outNot),
        //input
        .in (selector)
    );

    //Compuerta And#1
    wire outAnd1;
    AND_MAN and_1 (
        //output 
        .out (outAnd1),
        //Input
        .A (dataIn0),
        .B (outNot) 
    );

    //Compuerta And#2
    wire outAnd2;
    AND_MAN and_2 (
        //output 
        .out (outAnd2),
        //Input
        .A (dataIn1),
        .B (selector)
    );

    //Compuerta OR
    OR_MAN or_1(
        //output
        .out (dataOut),
        //input
        .A (outAnd1),
        .B (outAnd2)
    );    
endmodule