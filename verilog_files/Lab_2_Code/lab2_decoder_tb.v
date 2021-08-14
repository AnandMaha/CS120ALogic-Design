`timescale 1ns / 1ns
`include "lab2_decoder.v"

module lab2_decoder_38_b_tb;

reg A; reg B; reg C; reg en;
wire [0:7]Z;
wire [0:3]Y;

decoder38_b uut(.A(A),.B(B), .C(C), .E(en), .Z(Z));
initial begin
	$dumpfile("lab2_decoder_tb.vcd");
	$dumpvars(0,lab2_decoder_38_b_tb);
	A = 0; B = 0; C = 0; en = 0;
	#10;
	
	A = 0; B = 0; C = 1; en = 0;
	#10;
	
	A = 0; B = 1; C = 0; en = 0;
	#10;
	
	A = 0; B = 1; C = 1; en = 0;
	#10;
	
	A = 1; B = 0; C = 0; en = 0;
	#10;
	
	A = 1; B = 0; C = 1; en = 0;
	#10;
	
	A = 1; B = 1; C = 0; en = 0;
	#10;
	
	A = 1; B = 1; C = 1; en = 0;
	#10;
	
	A = 0; B = 0; C = 0; en = 1;
	#10;
	
	A = 0; B = 0; C = 1; en = 1;
	#10;
	
	A = 0; B = 1; C = 0; en = 1;
	#10;
	
	A = 0; B = 1; C = 1; en = 1;
	#10;
	
	A = 1; B = 0; C = 0; en = 1;
	#10;
	
	A = 1; B = 0; C = 1; en = 1;
	#10;
	
	A = 1; B = 1; C = 0; en = 1;
	#10;
	
	A = 1; B = 1; C = 1; en = 1;
	#10;

end
endmodule

module lab2_decoder_38_s_tb;

reg A; reg B; reg C; reg en;
wire [0:7]Z;
wire [0:3]Y;
decoder38_s uut2(.A(A),.B(B), .C(C), .E(en), .Z(Z));
initial begin
	$dumpfile("lab2_decoder_tb.vcd");
	$dumpvars(0,lab2_decoder_38_s_tb);
	A = 0; B = 0; C = 0; en = 0;
	#10;
	
	A = 0; B = 0; C = 1; en = 0;
	#10;
	
	A = 0; B = 1; C = 0; en = 0;
	#10;
	
	A = 0; B = 1; C = 1; en = 0;
	#10;
	
	A = 1; B = 0; C = 0; en = 0;
	#10;
	
	A = 1; B = 0; C = 1; en = 0;
	#10;
	
	A = 1; B = 1; C = 0; en = 0;
	#10;
	
	A = 1; B = 1; C = 1; en = 0;
	#10;
	
	A = 0; B = 0; C = 0; en = 1;
	#10;
	
	A = 0; B = 0; C = 1; en = 1;
	#10;
	
	A = 0; B = 1; C = 0; en = 1;
	#10;
	
	A = 0; B = 1; C = 1; en = 1;
	#10;
	
	A = 1; B = 0; C = 0; en = 1;
	#10;
	
	A = 1; B = 0; C = 1; en = 1;
	#10;
	
	A = 1; B = 1; C = 0; en = 1;
	#10;
	
	A = 1; B = 1; C = 1; en = 1;
	#10;

end
endmodule

module lab2_decoder_24_b_tb;

reg A; reg B; reg C; reg en;
wire [0:7]Z;
wire [0:3]Y;

decoder24_b uut3(.A(A),.B(B), .E(en), .Z(Y));
initial begin
	$dumpfile("lab2_decoder_tb.vcd");
	$dumpvars(0,lab2_decoder_24_b_tb);
	A = 0; B = 0; en = 0;
	#10;
	
	A = 0; B = 1; en = 0;
	#10;
	
	A = 1; B = 0; en = 0;
	#10;
	
	A = 1; B = 1; en = 0;
	#10;
	
	A = 0; B = 0; en = 1;
	#10;
	
	A = 0; B = 1; en = 1;
	#10;
	
	A = 1; B = 0; en = 1;
	#10;
	
	A = 1; B = 1; en = 1;
	#10;

end
endmodule

module lab2_decoder_24_s_tb;

reg A; reg B; reg C; reg en;
wire [0:7]Z;
wire [0:3]Y;
decoder24_s uut4(.A(A),.B(B), .E(en), .Z(Y));
initial begin
	$dumpfile("lab2_decoder_tb.vcd");
	$dumpvars(0,lab2_decoder_24_s_tb);
	A = 0; B = 0; en = 0;
	#10;
	
	A = 0; B = 1; en = 0;
	#10;
	
	A = 1; B = 0; en = 0;
	#10;
	
	A = 1; B = 1; en = 0;
	#10;
	
	A = 0; B = 0; en = 1;
	#10;
	
	A = 0; B = 1; en = 1;
	#10;
	
	A = 1; B = 0; en = 1;
	#10;
	
	A = 1; B = 1; en = 1;
	#10;

end

endmodule