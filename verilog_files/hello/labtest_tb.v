`timescale 1ns/1ns
`include "labtest.v"
module labtest_tb;
 reg [3:0] In;
 wire [1:0] Out;
 wire V;
Priority_Encoder4 uut(.In(In), .Out(Out), .V(V));
initial begin
 $dumpfile("labtest_tb.vcd");
 $dumpvars(0, labtest_tb);
 In = 4'b0000;
 #10;
 In = 4'b0001;
 #10;
  In = 4'b0010;
 #10;
  In = 4'b0011;
 #10;
  In = 4'b0100;
 #10;
  In = 4'b0101;
 #10;
  In = 4'b0110;
 #10;
  In = 4'b0111;
 #10;
  In = 4'b1000;
 #10;
  In = 4'b1001;
 #10;
  In = 4'b1010;
 #10;
  In = 4'b1011;
 #10;
  In = 4'b1100;
 #10;
  In = 4'b1101;
 #10;
  In = 4'b1110;
 #10;
  In = 4'b1111;
 #10;
 end
endmodule


