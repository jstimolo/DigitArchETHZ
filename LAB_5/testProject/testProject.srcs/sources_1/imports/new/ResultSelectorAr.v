`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2021 17:18:50
// Design Name: 
// Module Name: ResultSelectorAr
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


module ResultSelectorAr(input [31:0] adder, subtr, slt, input [2:0] select, output reg [32:0] Result);
    always @ (*)
        case(select)
            3'b001: Result = adder;
            3'b010: Result = subtr;
            3'b100: Result = slt;
            default: Result = 32'b0;
        endcase;
endmodule
