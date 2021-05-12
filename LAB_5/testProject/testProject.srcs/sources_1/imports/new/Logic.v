module Logic(input [31:0] a, b, input[3:0] aluOp, output [31:0] result);

wire [3:0] sel_wire;
wire[31:0] and_wire, or_wire, xor_wire, nor_wire;


LogDecoder dec(.aluOp({aluOp[1], aluOp[0]}), .sel(sel_wire));


And32 and_gate(.a(a), .b(b), .sel(sel_wire[0]), .result(and_wire));

Or32 or_gate(.a(a), .b(b), .sel(sel_wire[1]), .result(or_wire));

Xor32 xor_gate(.a(a), .b(b), .sel(sel_wire[2]), .result(xor_wire));

Nor32 nor_gate(.a(a), .b(b), .sel(sel_wire[3]), .result(nor_wire));

ResultSelectorLog selector(.And(and_wire), .Or(or_wire), .Xor(xor_wire), .Nor(nor_wire), .select(sel_wire), .Result(result));


endmodule