`timescale 1ns / 1ps



module Adder(A,B,Cin,S,Co);
input A,B,Cin;
output S,Co;

assign {Co, S} = A + B + Cin;
endmodule




module FOURbitAdder(A,B,Cin,S,Co);
input [3:0]A,B;
input Cin;
output [3:0]S;
output Co;
wire n0, n1, n2;

Adder (A[0],B[0],Cin,S[0],n0);
Adder(A[1],B[1],n0,S[1],n1);
Adder(A[2],B[2],n1,S[2],n2);
Adder(A[3],B[3],n2,S[3],Co);
endmodule




module EIGHTbitAdder(A,B,Cin,S,Co);
input [7:0] A,B;
input Cin;
output [7:0] S;
output Co;
wire n;

FOURbitAdder (A[3:0],B[3:0],Cin,S[3:0],n);
FOURbitAdder (A[7:4],B[7:4],n,S[7:4],Co);    
endmodule




module SIXTEENbitAdder(A,B,Cin,S,Co);
input [15:0] A,B;
input Cin;
output [15:0] S;
output Co;
wire n;

EIGHTbitAdder(A[7:0],B[7:0],Cin,S[7:0],n);
EIGHTbitAdder(A[15:8],B[15:8],n,S[15:8],Co);
endmodule





module BitAdder32(A,B,S);
input [31:0] A,B;
output [31:0] S;
wire Co;
wire n;

SIXTEENbitAdder(A[15:0],B[15:0],0,S[15:0],n);
SIXTEENbitAdder(A[31:16],B[31:16],n,S[31:16],Co);
endmodule