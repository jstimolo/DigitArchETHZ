`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2021 17:16:34
// Design Name: 
// Module Name: Adder
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


module FullAdder(A,B,D,L,AN,Sel);
input [3:0] A,B;
wire [4:0] S;
wire [2:0] n;

FA (A[0],B[0],0,S[0],n[0]),(A[1],B[1],n[0],S[1],n[1]),(A[2],B[2],n[1],S[2],n[2]),(A[3],B[3],n[2],S[3],S[4]);

output reg [0:6] D;
output L;
output reg [3:0] AN;
input [1:0] Sel;

always@(Sel) begin
case(Sel)
    0: AN = 4'b1110;
    1: AN = 4'b1101;
    2: AN = 4'b1011;
    3: AN = 4'b0111;
endcase
end


assign L = S[4];


always@(S)
begin

case(S)
    0:  D = 7'b000_0001;
    1:  D = 7'b100_1111;
    2:  D = 7'b001_0010;
    3:  D = 7'b000_0110;
    4:  D = 7'b100_1100;
    5:  D = 7'b010_0100;
    6:  D = 7'b010_0000;
    7:  D = 7'b000_1111;
    8:  D = 7'b000_0000;
    9:  D = 7'b000_0100;
    10:  D = 7'b000_1000;
    11:  D = 7'b110_0000;
    12:  D = 7'b011_0001;
    13:  D = 7'b100_0010;
    14:  D = 7'b011_0000;
    15:  D = 7'b011_1000;
    default: D = 7'b111_1111;
    endcase
end
endmodule



module FA(A, B, Cin, Sum, Cout);
input A,B,Cin;
output Sum,Cout;

// SUM = (A XOR B) XOR Cin = (A (+) B) (+) Cin
// CARRY-OUT = A AND B OR Cin(A XOR B) = A * B + Cin(A (+) B)
assign Sum = A^B^Cin;
assign Cout = (A&B)|(Cin&A)|(Cin&B);
endmodule