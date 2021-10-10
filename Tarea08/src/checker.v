module checker (
    output reg outChecker,
    input [4:0] in_1,
    input [4:0] in_2,
    input clk);

    always @ (posedge clk) 
        begin
            if (in_1[4:0] == in_2[4:0])
                outChecker <= 1;
            else
                outChecker <= 0;
        end
endmodule