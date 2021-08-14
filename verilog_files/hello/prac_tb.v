`timescale 1ns/1ns
`include "prac.v"
module prac_tb;
 reg [3:0] A; 
reg [3:0] B;
reg enable;
 reg clk;
wire [2:0] D;
 wire Q;
always #5 clk=~clk;
hamming_dist uut(.clk(clk), .enable(enable), .D(D), .Q(Q), .A(A), .B(B));
initial begin
 $dumpfile("prac_tb.vcd");
 $dumpvars(0, prac_tb);
 clk = 0;
 A = 4'b0101;
 B = 4'b1001;
 // xor = 1100
 enable = 1;
 #20;
 $finish;
 end
endmodule