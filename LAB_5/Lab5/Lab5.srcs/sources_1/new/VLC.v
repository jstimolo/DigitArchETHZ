`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2021 17:34:23
// Design Name: 
// Module Name: VLC
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


module VLC(A,B,S,Y);
input [31:0]A,B;
input [3:0]S;
output reg [31:0]Y;


always@(S) begin
    case(S)
        4'b0000 : Y = A+B;
        4'b0010 : Y = A-B;
        4'b0100 : Y = A&B;
        4'b0101 : Y = A|B;
        4'b0110 : Y = A^B;
        4'b0111 : Y = ~(A|B);
        4'b1010 : Y[31] = (A-B) ? 1 : 0;
    endcase;
end
endmodule
