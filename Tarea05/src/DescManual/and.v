module AND_MAN (
    input A,
    input B, 
    output out);
    assign #(1:4.5:8,1:4.5:8) out = A & B;
endmodule