module FAStr(
	input wire A,
	input wire B,
	input wire Cin,
	output wire Sum,
	output wire Cout );
	
wire s1, T1, T2, T3;

xor X1 (S1, A, B);
xor X2(Sum, S1, Cin);

and A1(T3, A, B);
and A2(T2, B, Cin);
and A3(T1, A, Cin);

or o1(Cout, T1, T2, T3);

endmodule

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