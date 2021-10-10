`include "not.v"
`include "or.v"
`include "and.v"

module MUX (  
    output dataOut,
    input dataIn0,
    input dataIn1,
    input selector);

    //Compuerta Not
    wire outNot;
    NOT not_1(
        //output
        .out (outNot),
        //input
        .in (selector)
    );

    //Compuerta And#1
    wire outAnd1;
    AND and_1 (
        //output 
        .out (outAnd1),
        //Input
        .A (dataIn0),
        .B (outNot) 
    );

    //Compuerta And#2
    wire outAnd2;
    AND and_2 (
        //output 
        .out (outAnd2),
        //Input
        .A (dataIn1),
        .B (selector)
    );

    //Compuerta OR
    OR or_1(
        //output
        .out (dataOut),
        //input
        .A (outAnd1),
        .B (outAnd2)
    );    
endmodule