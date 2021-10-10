module identificador(
    input clk,
    input reset_L,
    input [3:0] idx,
    output reg [3:0] idx_dd                
);

    reg [3:0] idx_etapa_1;
    reg [3:0] idx_etapa_2;

    always @(posedge clk)begin
        if (reset_L==0)begin
            idx_dd      <=0;
            idx_etapa_1 <=0;
            idx_etapa_2 <=0;
        end else begin
            idx_etapa_1 <= idx;
            idx_etapa_2 <= idx_etapa_1;
            idx_dd <= idx_etapa_2;
        end
    end
endmodule