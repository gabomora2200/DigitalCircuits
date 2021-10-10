module sum_pipe(
    input clk,
    input reset_L,
    input [3:0] data_A,
    input [3:0] data_B,
    output reg [3:0] sum_30_dd
);
    //Se definen las variables internas
    reg [1:0] data_A_d_0;
    reg [1:0] data_B_d_0;
    reg [1:0] data_A_d;
    reg [1:0] data_B_d;

    reg acarreo_d;

    reg [2:0] sum_10;
    reg [1:0] sum_10_d;
    reg [3:0] sum_30_d;

    always @(posedge clk)begin
        if (reset_L==0)begin
            sum_30_dd   <= 0;
            data_A_d_0  <= 0;
            data_B_d_0  <= 0;
            data_A_d    <= 0;
            data_B_d    <= 0;
            acarreo_d   <= 0;
            sum_10      <= 0;
            sum_10_d    <= 0;
            sum_30_d    <= 0; 
        end else begin
            data_A_d_0      <= data_A[3:2];
            data_B_d_0      <= data_B[3:2];
            sum_10          <= data_A[1:0] + data_B[1:0];
            data_A_d        <= data_A_d_0;
            data_B_d        <= data_B_d_0;
            sum_10_d        <= sum_10[1:0];     
            acarreo_d       <= sum_10[2];
            sum_30_dd[3:2]  <= data_A_d + data_B_d + acarreo_d;
            sum_30_dd[1:0]  <= sum_10_d;
        end
    end
endmodule