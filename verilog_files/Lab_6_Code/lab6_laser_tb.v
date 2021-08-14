`timescale 1ns/1ns
`include "lab6_laser.v"
module lab6_laser_tb;
reg b;
reg clk; 
wire light;
laser_surgery_sys uut( .clk(clk), .b(b), .light(light));
always #10 clk=~clk;
initial begin
 $dumpfile("lab6_laser_tb.vcd");
 $dumpvars(0, lab6_laser_tb);
 clk=0;
 b=1'b0; #1000; 
 b=1'b1; #60; 
 b=1'b0; #90000; 
$finish;
end
endmodule