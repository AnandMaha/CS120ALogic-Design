`timescale 1ns/1ns
`include "lab4_fba.v"
module lab4_fba_tb;
reg [3:0] A;
reg [3:0] B;
reg Cin = 0;
wire [3:0] S;
wire Cout;
fourbitadder uut(.A(A), .B(B),.Cin(Cin), .S(S), .Cout(Cout));
initial begin
 $dumpfile("lab4_fba_tb.vcd");
 $dumpvars(0, lab4_fba_tb);
 A = 4'b1001;
 B= 4'b1100;
 #20; 
 A = 4'b0101;
 B= 4'b1001;
 #20;
 end
endmodule