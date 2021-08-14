`timescale 1ns/1ns
`include "lab4_edged.v"
module edged_tb_moore;
reg clk;
reg IN;wire OUT;
edgedetector_moore uut( .clk(clk), .signal(IN), .outedge(OUT));
always #5 clk=~clk;
initial begin
 $dumpfile("lab4_edged_tb.vcd");
 $dumpvars(0, edged_tb_moore);
 clk=0;
 IN=1'b0; #40; 
 IN=1'b1; #60; 
 IN=1'b0; #10; 
 IN=1'b1; #70; 
 IN=1'b0; #50; 
 IN=1'b1; #10; 
 IN=1'b0; #30; 
$finish;
end
endmodule


module edged_tb_mealy;
reg clk;
reg IN;wire OUT;
edgedetector_mealy uut2( .clk(clk), .signal(IN), .outedge(OUT));
always #5 clk=~clk;
initial begin
 $dumpfile("lab4_edged_tb.vcd");
 $dumpvars(0, edged_tb_mealy);
 clk=0;
 IN=1'b0; #40; 
 IN=1'b1; #60; 
 IN=1'b0; #10; 
 IN=1'b1; #70; 
 IN=1'b0; #50; 
 IN=1'b1; #10; 
 IN=1'b0; #30; 
$finish;
end
endmodule