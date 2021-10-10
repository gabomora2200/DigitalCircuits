module OR_MAN(
    input A,
    input B, 
    output out);
    assign #(1:7:14,1:7:14) out = A | B;
endmodule