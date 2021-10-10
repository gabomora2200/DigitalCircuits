module probadorsumador(
                input [3:0] sum_30_dd,
                input [3:0] idx_dd,
                input [3:0] sum_30_dd_synth,
                input [3:0] idx_dd_synth,
                output reg clk,
                output reg reset_L,
                output reg [3:0] idx,
                output reg [3:0] data_A,
                output reg [3:0] data_B);

    initial begin
        $dumpfile("tarea9.vcd");
        $dumpvars();

        reset_L <= 0;
        data_A  <= 0;
        data_B  <= 0;
        idx     <= 0;

        @(posedge clk);
        reset_L <= 0;
        data_A  <= 0;
        data_B  <= 0;

        @(posedge clk);
        reset_L <= 0;
        data_A  <= 0;
        data_B  <= 0;

        @(posedge clk);
        reset_L <= 1;
        data_A  <= 4'b0111;
        data_B  <= 4'b0101;
        idx     <= 4'b1111;

        @(posedge clk);
        reset_L <= 1;
        data_A  <= 4'b0010;
        data_B  <= 4'b0001;
        idx     <= 4'b1010;

        @(posedge clk);
        data_A  <= 4'b0111;
        data_B  <= 4'b0101;
        idx     <= 4'b1111;

        @(posedge clk);
        data_A  <= 4'b0010;
        data_B  <= 4'b0001;
        idx     <= 4'b1010;

        @(posedge clk);
        data_A  <= 4'b0111;
        data_B  <= 4'b0101;
        idx     <= 4'b1111;

        @(posedge clk);
        data_A  <= 4'b0010;
        data_B  <= 4'b0001;
        idx     <= 4'b1010;

        @(posedge clk);
        data_A  <= 4'b0111;
        data_B  <= 4'b0101;
        idx     <= 4'b1111;

        @(posedge clk);
        data_A  <= 4'b0010;
        data_B  <= 4'b0001;
        idx     <= 4'b1010;

        @(posedge clk);
        data_A  <= 4'b0111;
        data_B  <= 4'b0101;
        idx     <= 4'b1111;
    
        @(posedge clk);
        data_A  <= 4'b0010;
        data_B  <= 4'b0001;
        idx     <= 4'b1010;

        @(posedge clk);
        data_A  <= 4'b0111;
        data_B  <= 4'b0101;
        idx     <= 4'b1111;

        @(posedge clk);
        data_A  <= 4'b0010;
        data_B  <= 4'b0001;
        idx     <= 4'b1010;

        @(posedge clk);
        data_A  <= 4'b0111;
        data_B  <= 4'b0101;
        idx     <= 4'b1111;

        @(posedge clk);
        data_A  <= 4'b0010;
        data_B  <= 4'b0001;
        idx     <= 4'b1010;

        @(posedge clk);
        data_A  <= 4'b0111;
        data_B  <= 4'b0101;
        idx     <= 4'b1111;

        @(posedge clk);
        data_A  <= 4'b0010;
        data_B  <= 4'b0001;
        idx     <= 4'b1010;

        @(posedge clk);
        data_A  <= 4'b0111;
        data_B  <= 4'b0101;
        idx     <= 4'b1111;

        @(posedge clk);
        data_A  <= 4'b0010;
        data_B  <= 4'b0001;
        idx     <= 4'b1010;

        @(posedge clk);
        data_A  <= 4'b0111;
        data_B  <= 4'b0101;
        idx     <= 4'b1111;

        @(posedge clk);
        data_A  <= 4'b0010;
        data_B  <= 4'b0001;
        idx     <= 4'b1010;

        $finish;
    end

    initial clk <= 0;
    always #1 clk <= ~clk; 

endmodule