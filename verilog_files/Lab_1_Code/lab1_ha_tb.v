`timescale 1ns / 1ns
`include "lab1_ha.v"
module lab1_ha_tb;

reg A; reg B;
wire Sum; wire Carry;

halfadder_b uut(.A(A),.B(B), .Sum(Sum), .Carry(Carry));
initial begin
	$dumpfile("lab1_ha_tb.vcd");
	$dumpvars(0,lab1_ha_tb);
	A = 0; B = 0;
	#20;
	
	A = 0; B = 1;
	#20;
	
	A = 1; B = 0;
	#20;
	
	A = 1; B = 1;
	#20;

end

halfadder_d uut2(.A(A),.B(B), .Sum(Sum), .Carry(Carry));
initial begin
	A = 0; B = 0;
	#20;
	
	A = 0; B = 1;
	#20;
	
	A = 1; B = 0;
	#20;
	
	A = 1; B = 1;
	#20;

end

halfadder_s uut3(.A(A),.B(B), .Sum(Sum), .Carry(Carry));
initial begin
	A = 0; B = 0;
	#20;
	
	A = 0; B = 1;
	#20;
	
	A = 1; B = 0;
	#20;
	
	A = 1; B = 1;
	#20;

end

endmodule