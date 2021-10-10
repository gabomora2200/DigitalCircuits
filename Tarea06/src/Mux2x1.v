module Mux2x1(
    output reg [1:0]dataOutCond,
    output reg validOUT,
    input [1:0]dataIn0,
    input [1:0]dataIn1,
    input selector,
    input clk,
    input reset,
    input validIN0,
    input validIN1);

    reg [1:0]out;
    reg validOutMux; 

    //Mux de entrada el que escoge entre dataIn1 y dataIn0 a partir del selector
    always @(*)
        begin
            if(selector==0) begin
                out=dataIn0;
                validOutMux = validIN0;
            end
            else if (selector==1)begin
                out=dataIn1;
                validOutMux = validIN1;
            end
        end
    // Flop que guarda lo que sea que este ee el cable out que conecta el mux con el flop
    always @(posedge clk)
        begin
            if (reset == 0)
                dataOutCond <= 2'b00;
            else begin
                if (validOutMux == 1)begin
                    dataOutCond <= out;
                    validOUT <= validOutMux;
                    end
                else begin
                    dataOutCond <= dataOutCond; 
                    validOUT <= validOutMux;   
                end
            end
        end
endmodule