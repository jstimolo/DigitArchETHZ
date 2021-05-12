`timescale 1ns / 1ps



module VLC(A,B,AluOp,result,zero);
input [31:0]A,B;
input [3:0]AluOp;
output [31:0] result;
output zero;
wire [31:0] ArithmOut,LogicOut;

arithmetic(A,B,AluOp,ArithmOut);
logic(A,B,AluOp,LogicOut);

assign result = (AluOp[2]) ? LogicOut : ArithmOut;
zero(result,zero);
endmodule





module arithmetic(A,B,AluOp,ArithmOut);
input [31:0] A,B;
input [3:0] AluOp;
output [31:0] ArithmOut;
wire [31:0] AdderOut;
wire [31:0] extended;


//Check if add or sub has to be done:
assign AdderOut = (AluOp[1]) ? (A+(~B)) : (A+B);

//Check if output is slt or adderOut:
assign extended = 32'b0;
assign extended[31] = AdderOut[31];
assign ArithmOut = (AluOp[3]) ? extended : AdderOut;
endmodule





module logic(A,B,AluOp,LogicOut);
input [31:0] A,B;
input [3:0] AluOp;
output reg [31:0] LogicOut;
wire [31:0] AND,OR,NOR,XOR;


and(AND,A,B);
or(OR,A,B);
nor(NOR,A,B);
xor(XOR,A,B);

always @ (*) 
    case(AluOp[1:0])
        0: LogicOut <= AND;
        1: LogicOut <= OR;
        2: LogicOut <= NOR;
        3: LogicOut <= XOR;
    endcase
endmodule





module zero(result,zero);
input result;
output zero;
wire result_0;
assign result_0 = 32'b0;

assign zero = (result == result_0);
endmodule




