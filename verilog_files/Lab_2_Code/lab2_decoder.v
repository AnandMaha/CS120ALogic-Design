module decoder38_b(
	input wire A,
	input wire B,
	input wire C,
	input wire E,
	output reg [0:7] Z );

always @(A,B,C, E)
begin

Z[0] <= E & ~A & ~B & ~C;
Z[1] <= E & ~A & ~B & C;
Z[2] <= E & !A & B & !C;
Z[3] <= E & !A & B & C;
Z[4] <= E & A & !B & !C;
Z[5] <= E & A & !B & C;
Z[6] <= E & A & B & !C;
Z[7] <= E & A & B & C;

end

endmodule

module decoder38_s(
	input wire A,
	input wire B,
	input wire C,
	input wire E,
	output wire [0:7] Z );

and(Z[0], !A, !B, !C, E);
and(Z[1], !A, !B, C, E);
and(Z[2], !A, B, !C, E);
and(Z[3], !A, B, C, E);
and(Z[4], A, !B, !C, E);
and(Z[5], A, !B, C, E);
and(Z[6], A, B, !C, E);
and(Z[7], A, B, C, E);

endmodule

module decoder24_b(
	input wire A,
	input wire B,
	input wire E,
	output reg [0:3] Z );

always @(A,B, E)
begin

Z[0] <= E & !A & !B;
Z[1] <= E & !A & B;
Z[2] <= E & A & !B;
Z[3] <= E & A & B;

end

endmodule

module decoder24_s(
	input wire A,
	input wire B,
	input wire E,
	output wire [0:3] Z );

and(Z[0], !A, !B, E);
and(Z[1], !A, B, E);
and(Z[2], A, !B, E);
and(Z[3], A, B, E);

endmodule

