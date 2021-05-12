`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2021 18:43:46
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(input a, input b, input ci, output s, output co);
wire and1_output, and2_output;
wire xor1_out;


//daclaring gates
and and1(and1_output, a, b);
and and2(and2_output, ci, xor1_out);

xor xor1(xor1_out, a, b);
xor xor2(s, xor1_out, ci);

or or1(co, and1_output, and2_output);

endmodule

module FourBitAdder(input carry_in, input [3:0] a, input [3:0] b, output [3:0] s, output carry_out);


wire co0, co1, co2;


FullAdder f0 (.a(a[0]), .b(b[0]), .ci(carry_in), .s(s[0]), .co(co0));
FullAdder f1 (.a(a[1]), .b(b[1]), .ci(co0), .s(s[1]), .co(co1));
FullAdder f2 (.a(a[2]), .b(b[2]), .ci(co1), .s(s[2]), .co(co2));
FullAdder f3 (.a(a[3]), .b(b[3]), .ci(co2), .s(s[3]), .co(carry_out));

endmodule

module EightBitAdder(input [7:0] a, b, input carry_in, output [7:0] s, output carry_out);
    wire carry_out_wire;

    FourBitAdder a1(.carry_in(carry_in), .a(a [3:0]), .b(b [3:0]), .s(s [3:0]), .carry_out(carry_out_wire));
    FourBitAdder a2(.carry_in(carry_out_wire), .a(a [7:4]), .b(b [7:4]), .s(s [7:4]), .carry_out(carry_out));
    

endmodule

module BitAdder16(input [15:0] a, b, input carry_in, output [15:0] s, output carry_out);
    wire carry_out_wire;

    EightBitAdder a1(.carry_in(carry_in), .a(a [7:0]), .b(b [7:0]), .s(s [7:0]), .carry_out(carry_out_wire));
    EightBitAdder a2(.carry_in(carry_out_wire), .a(a [15:8]), .b(b [15:8]), .s(s [15:8]), .carry_out(carry_out));
    

endmodule
module BitAdder32(input [31:0] a, b, output [32:0] s);
    wire carry_out_wire;

    BitAdder16 a1(.carry_in(0), .a(a [15:0]), .b(b [15:0]), .s(s [15:0]), .carry_out(carry_out_wire));
    BitAdder16 a2(.carry_in(carry_out_wire), .a(a [31:16]), .b(b [31:16]), .s(s [31:16]), .carry_out(s[32]));
endmodule

