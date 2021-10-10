module contador(
    input [1:0] inToCount,
    output reg [4:0] counted
    );

    always @(posedge inToCount)
        begin
            counted <= counted +1;
        end
endmodule