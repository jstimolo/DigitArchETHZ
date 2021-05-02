`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2021 17:09:18
// Design Name: 
// Module Name: FullAdder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FullAdder( A,B,S);
input [3:0] A,B;
output [4:0] S;
wire n0,n1,n2;
carry carry0(A[0],B[0],0,S[0],n0);
carry carry1(A[1],B[1],n0,S[1],n1);
carry carry2(A[2],B[2],n1,S[2],n2);
carry carry3(A[3],B[3],n2,S[3],S[4]);
endmodule




module carry(A, B, Cin, Y, Cout);
// SUM = (A XOR B) XOR Cin = (A (+) B) (+) Cin
// CARRY-OUT = A AND B OR Cin(A XOR B) = A * B + Cin(A (+) B)
input A,B,Cin;
wire n0,n1,n2,n3;
output Y,Cout;

//SUM:
xor my_xor0(n0, A, B);
xor my_xor1(Y, n0, Cin);

//CARRY:
and my_and0(n3,A,B);
xor my_xor2(n1,A,B);
and my_and1(n2,Cin,n1);
or my_or(Cout,n3,n2);

endmodule