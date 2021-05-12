`timescale 1ns / 1ps



module VLC(A,B,AluOp,result);
input [31:0]A,B;
input [3:0]AluOp;
output [31:0] result;
wire [31:0] ArithmOut,LogicOut;

Arithmetic(.A(A),.B(B),.AluOp(AluOp),.ArithmOut(ArithmOut));
Logic(.A(A),.B(B),.AluOp(AluOp),.LogicOut(LogicOut));

assign result = (AluOp[2]) ? LogicOut : ArithmOut;
endmodule