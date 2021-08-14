module comp_str(
	input wire [3:0] A,
	input wire [3:0] B,
	output wire Q ) ;

wire t1, t2, t3, t4;

xor c1(t1, A[0], B[0]);
xor c2(t2, A[1], B[1]);
xor c3(t3, A[2], B[2]);
xor c4(t4, A[3], B[3]);
or c5(Q, t1, t2, t3, t4);
endmodule

module comp_b(
	input wire [3:0] A,
	input wire [3:0] B,
	output reg Q ) ;

reg t1, t2, t3, t4;

always @(*) begin

t1 = A[0] ^ B[0];
t2 = A[1] ^ B[1];
t3 = A[2] ^ B[2];
t4 = A[3] ^ B[3];
Q = t1 | t2 | t3 | t4;
end
endmodule


module comp_d(
	input wire [3:0] A,
	input wire [3:0] B,
	output wire Q ) ;

wire t1, t2, t3, t4;

assign t1 = A[0] ^ B[0];
assign t2 = A[1] ^ B[1];
assign t3 = A[2] ^ B[2];
assign t4 = A[3] ^ B[3];
assign Q = t1 | t2 | t3 | t4;
endmodule
