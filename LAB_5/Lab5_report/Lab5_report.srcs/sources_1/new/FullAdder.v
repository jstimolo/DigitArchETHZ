`timescale 1ns / 1ps


module FullAdder(A,B,S);
input [31:0] A,B;
output [31:0] S;
wire [31:0] n;

integer i;
always @ (*) begin
    adder(A[0],B[0],0,S[0],n[0]); //Initialization
    for(i=1; i<31; i=i+1) begin
        adder(A[i],B[i],n[i],S[i],n[i+1]);
    end
end
endmodule