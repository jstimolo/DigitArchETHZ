`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2021 09:37:17
// Design Name: 
// Module Name: alu
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


module alu(input [31:0] a, b, input[3:0] AluOp, output [31:0] result, output zero_flag);

wire [31:0] ar_wire, log_wire;


//arithmetic
Arithmetic ar(.a(a), .b(b), .aluOp(AluOp), .result(ar_wire));

//logic
Logic log(.a(a), .b(b), .aluOp(AluOp), .result(log_wire));
//multiplexer 1:2

Multiplexer mult(.ar(ar_wire), .log(log_wire), .select(AluOp[2]), .result(result), .flag(zero_flag));



endmodule
