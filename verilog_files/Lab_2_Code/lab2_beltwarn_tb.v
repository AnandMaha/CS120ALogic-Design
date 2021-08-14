`timescale 1ns / 1ns
`include "lab2_beltwarn.v"
module lab2_beltwarn_tb;

reg K; reg P; reg S;
wire W;

beltwarn_s uut(.K(K),.P(P), .S(S), .W(W));
initial begin
	K = 0; P = 0; S = 0;
	#20;
	
	K = 0; P = 0; S = 1;
	#20;
	
	K = 0; P = 1; S = 0;
	#20;
	
	K = 0; P = 1; S = 1;
	#20;
	
	K = 1; P = 0; S = 0;
	#20;
	
	K = 1; P = 0; S = 1;
	#20;
	
	K = 1; P = 1; S = 0;
	#20;
	
	K = 1; P = 1; S = 1;
	#20;

end

beltwarn_b uut2(.K(K),.P(P), .S(S), .W(W));
initial begin

	K = 0; P = 0; S = 0;
	#20;
	
	K = 0; P = 0; S = 1;
	#20;
	
	K = 0; P = 1; S = 0;
	#20;
	
	K = 0; P = 1; S = 1;
	#20;
	
	K = 1; P = 0; S = 0;
	#20;
	
	K = 1; P = 0; S = 1;
	#20;
	
	K = 1; P = 1; S = 0;
	#20;
	
	K = 1; P = 1; S = 1;
	#20;

end

endmodule