module halfadder_b (
	input wire A ,
	input wire B,
	output reg Sum,
	output reg Carry );
	
always@(A,B) begin
	Sum <= A ^ B;
	Carry <= A & B;
end

endmodule

module halfadder_s (
	input wire A ,
	input wire B,
	output wire Sum,
	output wire Carry );
	
xor c1(Sum, A , B);
and c2(Carry, A, B);
endmodule

module halfadder_d (
	input wire A ,
	input wire B,
	output wire Sum,
	output wire Carry );
	
assign Sum = A ^ B;
assign Carry = A & B;

endmodule