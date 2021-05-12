`timescale 1ns / 1ps


module Arithmetic(A,B,AluOp,ArithmOut);
input [31:0] A,B;
input [3:0] AluOp;
output ArithmOut;
wire [31:0] add, sub, AdderOut, extended;


//Check if add or sub has to be done:
BitAdder32 (A,B,add);
BitAdder32 (A,~B,sub);
assign AdderOut = (AluOp[1]) ? add : sub;

//Check if output is slt or adderOut:
assign extended = 31'b0;
assign extended[31] = AdderOut[31];
assign ArithmOut = (AluOp[3]) ? extended : AdderOut;
endmodule