module contador_gray_cond(
                    input clk,
                    input reset_L,
                    input enable,
                    output reg [4:0] salida_gray
                    );
    
    reg [4:0] contador_bin;
    
    always @(posedge clk)begin

        if (reset_L == 0 || enable == 0)begin
            contador_bin <= 0;
            salida_gray <= 0;
        end
        else if (reset_L == 1 && enable == 1)begin
            contador_bin = contador_bin + 1;
            salida_gray [4] <= contador_bin[4];
            salida_gray [3] <= contador_bin[4] + contador_bin[3];
            salida_gray [2] <= contador_bin[3] + contador_bin[2];
            salida_gray [1] <= contador_bin[2] + contador_bin[1];
            salida_gray [0] <= contador_bin[1] + contador_bin[0];   
        end
    end
endmodule