`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2021 10:07:24
// Design Name: 
// Module Name: ArDecoder
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


module ArDecoder(input [1:0] sel, output reg [2:0] out);
always @ (*)
    case(sel)
    2'b00: out <= 3'b001;
    2'b01: out <= 3'b010;
    2'b11: out <= 3'b100;
    default: out <= 3'b000;
  endcase
endmodule
