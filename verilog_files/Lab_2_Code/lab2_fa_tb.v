`timescale 1ns / 1ns
`include "lab2_fa.v"

module lab2_fa_tb_s;

reg A; reg B; reg Cin;
wire Sum; wire Cout;

FAStr uut(.A(A),.B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));
initial begin
	$dumpfile("lab2_fa_tb.vcd");
	$dumpvars(0,lab2_fa_tb_s);
	A = 0; B = 0; Cin = 0;
	#20;
	
	A = 0; B = 0; Cin = 1;
	#20;
	
	A = 0; B = 1; Cin = 0;
	#20;
	
	A = 0; B = 1; Cin = 1;
	#20;
	
	A = 1; B = 0; Cin = 0;
	#20;
	
	A = 1; B = 0; Cin = 1;
	#20;
	
	A = 1; B = 1; Cin = 0;
	#20;
	
	A = 1; B = 1; Cin = 1;
	#20;

end
endmodule

module lab2_fa_tb_b;
reg A; reg B; reg Cin;
wire Sum; wire Cout;
FASeq uut2(.A(A),.B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));
initial begin
	$dumpvars(0,lab2_fa_tb_b);
	A = 0; B = 0; Cin = 0;
	#20;
	
	A = 0; B = 0; Cin = 1;
	#20;
	
	A = 0; B = 1; Cin = 0;
	#20;
	
	A = 0; B = 1; Cin = 1;
	#20;
	
	A = 1; B = 0; Cin = 0;
	#20;
	
	A = 1; B = 0; Cin = 1;
	#20;
	
	A = 1; B = 1; Cin = 0;
	#20;
	
	A = 1; B = 1; Cin = 1;
	#20;

end


endmodule