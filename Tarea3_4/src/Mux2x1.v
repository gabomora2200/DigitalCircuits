module Mux2x1(
    output reg [1:0]dataOut,
    input [1:0]dataIn0,
    input [1:0]dataIn1,
    input selector,
    input clk,
    input reset);

    reg [1:0]out;

    //Mux de entrada el que escoge entre dataIn1 y dataIn0 a partir del selector
    always @(*)
        begin
            if(selector==0) 
                out=dataIn0;
            else
                out=dataIn1;
        end
    // Flop que guarda lo que sea que este ee el cable out que conecta el mux con el flop
    always @(posedge clk)
        begin
            if(reset == 1)
                dataOut <= out;
            else
                dataOut <= 2'b0;
        end
endmodule