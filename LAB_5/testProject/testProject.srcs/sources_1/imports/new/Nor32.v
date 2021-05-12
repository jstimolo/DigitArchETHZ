`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2021 11:03:23
// Design Name: 
// Module Name: Nor32
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

module Nor32(input[31:0] a, b, input sel, output reg [31:0] result);
always @ (*)
    if(sel == 1) result = ~(a | b);
    else result = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
endmodule
