`timescale 1ns/1ns
`include "lab6_timer.v"
module lab6_timer_tb;

reg clk, load, enable;
reg [31:0] M;
wire tick;

timerst uut( .clk(clk), .load(load), .enable(enable), .M(M), .tick(tick));
always #1 clk=~clk;
initial begin
 $dumpfile("lab6_timer_tb.vcd");
 $dumpvars(0, lab6_timer_tb);
 clk=0;
 load = 1;
 enable = 0;
 M = 182;
 #100;
 load = 0; enable = 1;
 #1000;
 load = 1; 
 #5;
 load = 0;
 #500;
 $finish;
end
endmodule