`timescale 1ns/1ns
`include "lab5_comp.v"
module lab5_comp_tb;
reg [3:0] A;
reg [3:0] B;
wire Gt, Eq, Lt;
comp_sign uut(.A(A), .B(B), .Gt(Gt), .Eq(Eq), .Lt(Lt));
initial begin
 $dumpfile("lab5_comp_tb.vcd");
 $dumpvars(0, lab5_comp_tb);
 // 3 Gt cases
A = 4'b0001; B = 4'b1111; // 1 > -1
#20;
A = 4'b1111; B = 4'b1110; // -1 > -2
#20;
A = 4'b0111; B = 4'b0010; // 7 > 2
#20;

 // 3 Eq cases
A = 4'b1001; B = 4'b1001; // -7 == -7
#20;
A = 4'b0011; B = 4'b0011; //  3 == 3
#20;
A = 4'b1111; B = 4'b1111; // -1 == -1
#20;

 // 3 Lt cases
A = 4'b1111; B = 4'b0001;  // -1 < 1
#20;
A = 4'b1110; B = 4'b1111; // -2 < -1
#20;
A = 4'b0010; B = 4'b0111; // 2 < 7
#20;
 end
endmodule