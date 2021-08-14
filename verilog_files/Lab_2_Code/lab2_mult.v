module MUX41_b(
	input wire [0:3] D,
	input wire [1:0] S,
	output reg Z);

always @(D, S)
begin

case(S)
	2'b00: Z <= D[0];
	2'b01: Z <= D[1];
	2'b10: Z <= D[2];
	2'b11: Z <= D[3];
endcase

end

endmodule

module MUX41_s(
	input wire [0:3] D,
	input wire [1:0] S,
	output wire Z);

wire c1, c2, c3, c4;
and(c1, D[0], !S[1], !S[0]);
and(c2, D[1], !S[1], S[0]);
and(c3, D[2], S[1], !S[0]);
and(c4, D[3], S[1], S[0]);
or(Z, c1, c2, c3, c4);

endmodule

module MUX81_b(
	input wire [0:7] D,
	input wire [2:0] S,
	output reg Z);;

always @(D,S)
begin

case(S)
	3'b000: Z <= D[0];
	3'b001: Z <= D[1];
	3'b010: Z <= D[2];
	3'b011: Z <= D[3];
	3'b100: Z <= D[4];
	3'b101: Z <= D[5];
	3'b110: Z <= D[6];
	3'b111: Z <= D[7];
	
endcase

end

endmodule

module MUX81_s(
	input wire [0:7] D,
	input wire [2:0] S,
	output wire Z);;

wire c1, c2, c3, c4, c5, c6, c7, c8;
and(c1, D[0], !S[2], !S[1], !S[0]);
and(c2, D[1], !S[2], !S[1], S[0]);
and(c3, D[2], !S[2], S[1], !S[0]);
and(c4, D[3], !S[2], S[1], S[0]);
and(c5, D[4], S[2], !S[1], !S[0]);
and(c6, D[5], S[2], !S[1], S[0]);
and(c7, D[6], S[2], S[1], !S[0]);
and(c8, D[7], S[2], S[1], S[0]);
or(Z, c1, c2, c3, c4, c5, c6, c7, c8);



endmodule

