`timescale 1ns/1ns
`include "lab5_cla.v"
module lab5_cla_tb;
reg clk; 
reg enable; 
reg cin;
reg [3:0] x; 
reg [3:0] y;
wire [4:0] r;
always #5 clk=~clk;
carrylookahead_st uut(.clk(clk), .enable(enable), .cin(cin), .r(r), .x(x), .y(y));
initial begin
 $dumpfile("lab5_cla_tb.vcd");
 $dumpvars(0, lab5_cla_tb);
 clk = 0;
 enable = 1;
 x = 4'b1001;
 y= 4'b1100;
 cin = 0;
 #23; 
 x = 4'b0101;
 y= 4'b1001;
 #16
 cin = 1;
 #15
 enable = 0;
 #20;
 $finish;
 end
endmodule