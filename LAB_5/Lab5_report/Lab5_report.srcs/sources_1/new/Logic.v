`timescale 1ns / 1ps



module Logic(A,B,AluOp,LogicOut);
input [31:0] A,B;
input [3:0] AluOp;
output reg LogicOut;
wire [31:0] AND,OR,NOR,XOR;

and(AND,A,B);
or(OR,A,B);
nor(NOR,A,B);
xor(XOR,A,B);

always @ (*) 
    case(AluOp[2:1])
        0: LogicOut <= AND;
        1: LogicOut <= OR;
        2: LogicOut <= NOR;
        3: LogicOut <= XOR;
    endcase
endmodule