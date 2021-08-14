`timescale 1ns / 1ns
`include "lab3_bcd.v"
module lab3_bcd_tb;
wire A; wire B;wire C;wire D;wire E;wire F;wire G; 
reg [3:0]S;
bcd_to_7led_b uut(.sw3(S[3]),.sw2(S[2]),.sw1(S[1]),.sw0(S[0]),.a(A),.b(B),.c(C),.d(D),.e(E),.f(F),.g(G));
initial begin
$dumpfile("lab3_bcd_tb.vcd");
$dumpvars(0,lab3_bcd_tb);
S=4'b0000;#20;
S=4'b0001;#20;
S=4'b0010;#20;
S=4'b0011;#20;
S=4'b0100;#20;
S=4'b0101;#20;
S=4'b0110;#20;
S=4'b0111;#20;
S=4'b1000;#20;
S=4'b1001;#20;
end
endmodule