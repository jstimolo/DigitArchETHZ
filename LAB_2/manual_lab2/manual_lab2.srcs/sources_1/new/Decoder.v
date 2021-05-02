`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2021 13:04:19
// Design Name: 
// Module Name: Decoder
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


module Decoder(input[1:0] A, input S, output [3:0] Y);
wire nA0,nA1;

not (nA0,A[0]),(nA1,A[1]);
and (Y[0],nA0,nA1),(Y[1],A[0],nA1),(Y[2],nA0,A[1]),(Y[3],A[0],A[1]);

endmodule