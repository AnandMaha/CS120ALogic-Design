`timescale 1ns/1ns
`include "lab5_multireg.v"
module lab5_multireg_tb;

reg clk;
reg [3:0] I;
reg rst, ld, shr, shl, shin;
reg [3:0] A;
wire [3:0] Q;
mfreg uut( .clk(clk), .I(I), .rst(rst), .ld(ld), .shr(shr), .shl(shl), .shin(shin), .Q(Q));
always #5 clk=~clk;
initial begin
 $dumpfile("lab5_multireg_tb.vcd");
 $dumpvars(0, lab5_multireg_tb);
 clk=0;
 assign A = 4'b1010;
 //Load A
 I = A;
 rst = 0; ld = 1; shr = 0; shl = 0; shin = 0;
 #10;
 
 ld = 0; rst = 1;
 #10;
 
 ld = 1; rst = 0;
 #25;
 
 //Right shift in 0111
 ld = 0; shr = 1; shin = 1;
 #10;

 shin = 1;
 #10;

 shin = 1;
 #10;

 shin = 0;
 #10;
 
 //Left shift in 1110
 shr = 0; shl = 1; shin = 1;
 #10;

 shin = 1;
 #10;

 shin = 1;
 #10;

 shin = 0;
 #10;
 $finish;
end
endmodule