`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2021 10:07:24
// Design Name: 
// Module Name: Slt
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


module Slt(input[31:0] a, b, input sel, output reg [31:0] result);
    always @(*)
        if(sel == 1)begin
            if(a > b) result = 32'b1;
            else result = 32'b0;
        end
        else result = 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
endmodule
