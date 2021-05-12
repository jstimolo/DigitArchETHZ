`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2021 11:03:23
// Design Name: 
// Module Name: LogDecoder
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


module LogDecoder(input[1:0] aluOp, output reg [3:0] sel);

always @ (*)
    case(aluOp)
        2'b00: sel = 4'b0001;
        2'b01: sel = 4'b0010;
        2'b10: sel = 4'b0100;
        2'b11: sel = 4'b1000;
        default sel = 4'b0000;
    endcase
endmodule
