`timescale 1ns / 1ns
`include "lab3_comparator.v"

module lab3_comp_s_tb;

reg [3:0] A;
reg [3:0] B;
wire Q;

comp_str uut(.A(A),.B(B), .Q(Q));
initial begin
	$dumpfile("lab3_comparator_tb.vcd");
	$dumpvars(0,lab3_comp_s_tb);
	
	//5 cases == 
	assign A[0] = 1; assign A[1] = 0; assign A[2] = 0; assign A[3] = 1;
	assign B[0] = 1; assign B[1] = 0; assign B[2] = 0; assign B[3] = 1;
	#10;
	
	assign A[0] = 1; assign A[1] = 1; assign A[2] = 1; assign A[3] = 0;
	assign B[0] = 1; assign B[1] = 1; assign B[2] = 1; assign B[3] = 0;
	#10;
	
	assign A[0] = 1; assign A[1] = 0; assign A[2] = 0; assign A[3] = 0;
	assign B[0] = 1; assign B[1] = 0; assign B[2] = 0; assign B[3] = 0;
	#10;
	
	assign A[0] = 0; assign A[1] = 0; assign A[2] = 0; assign A[3] = 0;
	assign B[0] = 0; assign B[1] = 0; assign B[2] = 0; assign B[3] = 0;
	#10;
	
	assign A[0] = 1; assign A[1] = 1; assign A[2] = 1; assign A[3] = 1;
	assign B[0] = 1; assign B[1] = 1; assign B[2] = 1; assign B[3] = 1;
	#10;
	
	//5 cases !=
	assign A[0] = 0; assign A[1] = 1; assign A[2] = 1; assign A[3] = 0;
	assign B[0] = 1; assign B[1] = 0; assign B[2] = 0; assign B[3] = 1;
	#10;
	
	assign A[0] = 1; assign A[1] = 0; assign A[2] = 0; assign A[3] = 1;
	assign B[0] = 0; assign B[1] = 1; assign B[2] = 1; assign B[3] = 0;
	#10;

	assign A[0] = 0; assign A[1] = 0; assign A[2] = 1; assign A[3] = 1;
	assign B[0] = 1; assign B[1] = 1; assign B[2] = 0; assign B[3] = 0;
	#10;
	
	assign A[0] = 1; assign A[1] = 1; assign A[2] = 0; assign A[3] = 0;
	assign B[0] = 0; assign B[1] = 0; assign B[2] = 1; assign B[3] = 1;
	#10;
	
	assign A[0] = 1; assign A[1] = 0; assign A[2] = 1; assign A[3] = 0;
	assign B[0] = 0; assign B[1] = 1; assign B[2] = 0; assign B[3] = 1;
	#10;
	
end
endmodule

module lab3_comp_b_tb;

reg [3:0] A;
reg [3:0] B;
wire Q;

comp_b uut(.A(A),.B(B), .Q(Q));
initial begin
	$dumpfile("lab3_comparator_tb.vcd");
	$dumpvars(0,lab3_comp_b_tb);
	
	//5 cases == 
	assign A[0] = 1; assign A[1] = 0; assign A[2] = 0; assign A[3] = 1;
	assign B[0] = 1; assign B[1] = 0; assign B[2] = 0; assign B[3] = 1;
	#10;
	
	assign A[0] = 1; assign A[1] = 1; assign A[2] = 1; assign A[3] = 0;
	assign B[0] = 1; assign B[1] = 1; assign B[2] = 1; assign B[3] = 0;
	#10;
	
	assign A[0] = 1; assign A[1] = 0; assign A[2] = 0; assign A[3] = 0;
	assign B[0] = 1; assign B[1] = 0; assign B[2] = 0; assign B[3] = 0;
	#10;
	
	assign A[0] = 0; assign A[1] = 0; assign A[2] = 0; assign A[3] = 0;
	assign B[0] = 0; assign B[1] = 0; assign B[2] = 0; assign B[3] = 0;
	#10;
	
	assign A[0] = 1; assign A[1] = 1; assign A[2] = 1; assign A[3] = 1;
	assign B[0] = 1; assign B[1] = 1; assign B[2] = 1; assign B[3] = 1;
	#10;
	
	//5 cases !=
	assign A[0] = 0; assign A[1] = 1; assign A[2] = 1; assign A[3] = 0;
	assign B[0] = 1; assign B[1] = 0; assign B[2] = 0; assign B[3] = 1;
	#10;
	
	assign A[0] = 1; assign A[1] = 0; assign A[2] = 0; assign A[3] = 1;
	assign B[0] = 0; assign B[1] = 1; assign B[2] = 1; assign B[3] = 0;
	#10;

	assign A[0] = 0; assign A[1] = 0; assign A[2] = 1; assign A[3] = 1;
	assign B[0] = 1; assign B[1] = 1; assign B[2] = 0; assign B[3] = 0;
	#10;
	
	assign A[0] = 1; assign A[1] = 1; assign A[2] = 0; assign A[3] = 0;
	assign B[0] = 0; assign B[1] = 0; assign B[2] = 1; assign B[3] = 1;
	#10;
	
	assign A[0] = 1; assign A[1] = 0; assign A[2] = 1; assign A[3] = 0;
	assign B[0] = 0; assign B[1] = 1; assign B[2] = 0; assign B[3] = 1;
	#10;
	
end
endmodule

module lab3_comp_d_tb;

reg [3:0] A;
reg [3:0] B;
wire Q;

comp_d uut(.A(A),.B(B), .Q(Q));
initial begin
	$dumpfile("lab3_comparator_tb.vcd");
	$dumpvars(0,lab3_comp_d_tb);
	
	//5 cases == 
	assign A[0] = 1; assign A[1] = 0; assign A[2] = 0; assign A[3] = 1;
	assign B[0] = 1; assign B[1] = 0; assign B[2] = 0; assign B[3] = 1;
	#10;
	
	assign A[0] = 1; assign A[1] = 1; assign A[2] = 1; assign A[3] = 0;
	assign B[0] = 1; assign B[1] = 1; assign B[2] = 1; assign B[3] = 0;
	#10;
	
	assign A[0] = 1; assign A[1] = 0; assign A[2] = 0; assign A[3] = 0;
	assign B[0] = 1; assign B[1] = 0; assign B[2] = 0; assign B[3] = 0;
	#10;
	
	assign A[0] = 0; assign A[1] = 0; assign A[2] = 0; assign A[3] = 0;
	assign B[0] = 0; assign B[1] = 0; assign B[2] = 0; assign B[3] = 0;
	#10;
	
	assign A[0] = 1; assign A[1] = 1; assign A[2] = 1; assign A[3] = 1;
	assign B[0] = 1; assign B[1] = 1; assign B[2] = 1; assign B[3] = 1;
	#10;
	
	//5 cases !=
	assign A[0] = 0; assign A[1] = 1; assign A[2] = 1; assign A[3] = 0;
	assign B[0] = 1; assign B[1] = 0; assign B[2] = 0; assign B[3] = 1;
	#10;
	
	assign A[0] = 1; assign A[1] = 0; assign A[2] = 0; assign A[3] = 1;
	assign B[0] = 0; assign B[1] = 1; assign B[2] = 1; assign B[3] = 0;
	#10;

	assign A[0] = 0; assign A[1] = 0; assign A[2] = 1; assign A[3] = 1;
	assign B[0] = 1; assign B[1] = 1; assign B[2] = 0; assign B[3] = 0;
	#10;
	
	assign A[0] = 1; assign A[1] = 1; assign A[2] = 0; assign A[3] = 0;
	assign B[0] = 0; assign B[1] = 0; assign B[2] = 1; assign B[3] = 1;
	#10;
	
	assign A[0] = 1; assign A[1] = 0; assign A[2] = 1; assign A[3] = 0;
	assign B[0] = 0; assign B[1] = 1; assign B[2] = 0; assign B[3] = 1;
	#10;
	
end
endmodule