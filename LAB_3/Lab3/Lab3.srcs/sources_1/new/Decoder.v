`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2021 23:17:06
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


module Decoder(S,D);
input [3:0] S;
output reg[0:6] D;
    
//Circuit always sensitive to changes in input signals:
always@(S)
    case(S)
    0:  D = 7'b000_0001;
    1:  D = 7'b100_1111;
    2:  D = 7'b001_0010;
    3:  D = 7'b000_0110;
    4:  D = 7'b100_1100;
    5:  D = 7'b010_0100;
    6:  D = 7'b010_0000;
    7:  D = 7'b000_1111;
    8:  D = 7'b000_0000;
    9:  D = 7'b000_0100;
    10:  D = 7'b000_1000;
    11:  D = 7'b110_0000;
    12:  D = 7'b011_0001;
    13:  D = 7'b100_0010;
    14:  D = 7'b011_0000;
    15:  D = 7'b011_1000;
    default: D = 7'bX;
    endcase
endmodule

