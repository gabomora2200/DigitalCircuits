module NOT(
    input in, 
    output out);

    assign #(1.5:3.1:4.6,1.5:3.1:4.6) out = ~in;
endmodule