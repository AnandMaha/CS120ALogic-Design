`timescale 1ns/1ns
`include "lab4_sreg.v"
module lab4_sreg_tb;
reg clk;
reg [3:0] B;
reg rst;
reg shL;
wire [3:0] Z;
syncShiftReg uut( .clk(clk), .rst(rst), .B(B), .Z(Z),.shL(shL));
always #5 clk=~clk;
initial begin
 $dumpfile("lab4_sreg_tb.vcd");
 $dumpvars(0, lab4_sreg_tb);
 clk=0;
 B = 4'b1001;
 rst = 0; shL=0; #20; 
 rst = 1; #20;
 shL = 1; #15;
 rst = 0; #45;
 B=4'b0100;#50;
 shL=0; #40;
 $finish;
end
endmodule