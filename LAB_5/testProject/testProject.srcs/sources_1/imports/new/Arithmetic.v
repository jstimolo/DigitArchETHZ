`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2021 09:43:27
// Design Name: 
// Module Name: Arithmetic
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


module Arithmetic(input [31:0] a, b, input[3:0] aluOp, output [31:0] result);

wire [2:0] select_wire;
wire [31:0] add_res, sub_res, slt_res;

ArDecoder dec(.sel({aluOp[3], aluOp[1]}), .out(select_wire));

Adder add(.a(a), .b(b), .sel(select_wire[0]), .Result(add_res));

Subtract sub(.a(a), .b(b), .sel(select_wire[1]), .result(sub_res));

Slt slt(.a(a), .b(b), .sel(select_wire[2]), .result(slt_res));



ResultSelectorAr rs(.adder(add_res), .subtr(sub_res), .slt(slt_res), .select(select_wire), .Result(result));


endmodule
