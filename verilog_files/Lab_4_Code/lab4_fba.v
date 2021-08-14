module FASeq(
	input wire A,
	input wire B,
	input wire Cin,
	output reg Sum,
	output reg Cout );
	
reg T1; reg T2; reg T3;

always @(A or B or Cin)
begin

Sum = (A ^ B) ^ Cin;
T1 = A & Cin;
T2 = B & Cin;
T3 = A & B;

Cout = (T1 | T2) | T3;
end

endmodule

module fourbitadder (
input wire[3:0] A,
input wire[3:0] B,
input wire Cin,
output wire[3:0] S,
output Cout );

wire [3:0] carry;

FASeq FA1 (A[0], B[0], Cin, S[0], carry[0]);
FASeq FA2 (A[1], B[1], carry[0], S[1], carry[1]);
FASeq FA3 (A[2], B[2], carry[1], S[2], carry[2]);
FASeq FA4 (A[3], B[3], carry[2], S[3], Cout);

endmodule