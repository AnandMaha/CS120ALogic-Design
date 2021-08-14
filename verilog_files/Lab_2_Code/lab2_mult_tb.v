`timescale 1ns / 1ns
`include "lab2_mult.v"

module lab2_mult_41_b_tb;

wire [0:3] D;
assign D[0] = 1; assign D[1] = 0; assign D[2] = 0; assign D[3] = 1;
reg [1:0] S;
wire Z;

MUX41_b uut(.D(D),.S(S), .Z(Z));
initial begin
	$dumpfile("lab2_mult_tb.vcd");
	$dumpvars(0,lab2_mult_41_b_tb);
	S[1] = 0; S[0] = 0;
	#10;
	
	S[1] = 0; S[0] = 1;
	#10;
	
	S[1] = 1; S[0] = 0;
	#10;
	
	S[1] = 1; S[0] = 1;
	#10;
	

end
endmodule

module lab2_mult_41_s_tb;

wire [0:3] D;
assign D[0] = 1; assign D[1] = 0; assign D[2] = 0; assign D[3] = 1;
reg [1:0] S;
wire Z;

MUX41_s uut2(.D(D),.S(S), .Z(Z));
initial begin
	$dumpfile("lab2_mult_tb.vcd");
	$dumpvars(0,lab2_mult_41_s_tb);
	S[1] = 0; S[0] = 0;
	#10;
	
	S[1] = 0; S[0] = 1;
	#10;
	
	S[1] = 1; S[0] = 0;
	#10;
	
	S[1] = 1; S[0] = 1;
	#10;

end
endmodule

module lab2_mult_81_b_tb;

wire [0:7] D;
assign D[0] = 1; assign D[1] = 0; assign D[2] = 0; assign D[3] = 1; assign D[4] = 0; assign D[5] = 1; assign D[6] = 0; assign D[7] = 1; 
reg [2:0] S;
wire Z;

MUX81_b uut3(.D(D),.S(S), .Z(Z));
initial begin
	$dumpfile("lab2_mult_tb.vcd");
	$dumpvars(0,lab2_mult_81_b_tb);
	S[2] = 0; S[1] = 0; S[0] = 0;
	#10;
	
	S[2] = 0; S[1] = 0; S[0] = 1;
	#10;
	
	S[2] = 0; S[1] = 1; S[0] = 0;
	#10;
	
	S[2] = 0; S[1] = 1; S[0] = 1;
	#10;
	
	S[2] = 1; S[1] = 0; S[0] = 0;
	#10;
	
	S[2] = 1; S[1] = 0; S[0] = 1;
	#10;
	
	S[2] = 1; S[1] = 1; S[0] = 0;
	#10;
	
	S[2] = 1; S[1] = 1; S[0] = 1;
	#10;
	

end
endmodule

module lab2_mult_81_s_tb;

wire [0:7] D;
assign D[0] = 1; assign D[1] = 0; assign D[2] = 0; assign D[3] = 1; assign D[4] = 0; assign D[5] = 1; assign D[6] = 0; assign D[7] = 1; 
reg [2:0] S;
wire Z;

MUX81_s uut4(.D(D),.S(S), .Z(Z));
initial begin
	$dumpfile("lab2_mult_tb.vcd");
	$dumpvars(0,lab2_mult_81_s_tb);
	S[2] = 0; S[1] = 0; S[0] = 0;
	#10;
	
	S[2] = 0; S[1] = 0; S[0] = 1;
	#10;
	
	S[2] = 0; S[1] = 1; S[0] = 0;
	#10;
	
	S[2] = 0; S[1] = 1; S[0] = 1;
	#10;
	
	S[2] = 1; S[1] = 0; S[0] = 0;
	#10;
	
	S[2] = 1; S[1] = 0; S[0] = 1;
	#10;
	
	S[2] = 1; S[1] = 1; S[0] = 0;
	#10;
	
	S[2] = 1; S[1] = 1; S[0] = 1;
	#10;

end

endmodule