`include "lab4_clk.v"
`timescale 1ns/1ns
module clkdiv_tb;
reg clk_in;
wire clk_out;
clkdiv uut( .clk(clk_in), .clk_out(clk_out));
always #5 clk_in=~clk_in;
initial begin
 $dumpfile("lab4_clk_tb.vcd");
 $dumpvars(0, clkdiv_tb);
  clk_in=0; #1500; 
$finish;
end
endmodule