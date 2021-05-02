`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2021 00:03:23
// Design Name: 
// Module Name: Multiplexer
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


module Multiplexer(input[3:0] A, input S[1:0], output Y);
wire nS0,nS1,n0,n1,n2,n3;

not (nS,S[0]),(nS1,S[1]);
and (n0,nS1,nS0,A[0]),(n1,nS1,S[0],A[1]),(n2,S[1],nS0,A[2]),(n3,S[1],S[0],A[3]);
or (Y,n0,n1,n2,n3);

endmodule
