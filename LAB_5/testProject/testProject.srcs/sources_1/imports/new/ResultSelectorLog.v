`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2021 17:36:29
// Design Name: 
// Module Name: ResultSelectorLog
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


module ResultSelectorLog(input[31:0] And, Or, Xor, Nor, input [3:0] select, output reg [31:0] Result);
    always @(*)
    case(select)
        4'b0001: Result = And;
        4'b0010: Result = Or;
        4'b0100: Result = Xor;
        4'b1000: Result = Nor;
        default: Result = 32'b0;
    endcase


endmodule
