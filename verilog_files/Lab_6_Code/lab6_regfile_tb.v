`timescale 1ns/1ns
`include "lab6_regfile.v"
module lab6_regfile_tb;

reg [1:0] RAddr, WAddr;
reg Ren, Wen;
reg [31:0] WData;
reg Rst, Clk;
wire [31:0] RData;

regfile uut( .Clk(Clk), .RAddr(RAddr), .WAddr(WAddr), .Ren(Ren),
 .Wen(Wen), .WData(WData), .Rst(Rst), .RData(RData));
always #5 Clk=~Clk;
initial begin
 $dumpfile("lab6_regfile_tb.vcd");
 $dumpvars(0, lab6_regfile_tb);
 Clk=0;
 Rst = 0;
 Ren = 0;
 RAddr = 0; 
 WAddr = 2'b00;
 WData = 15;
 Wen = 1;
 #20;
 WAddr = 2'b01;
 WData = 103;
 #20;
 WAddr = 2'b10;
 WData = 34;
 #20;
 WAddr = 2'b11;
 WData = 123;
 #20;
 
 Wen = 0; 
 RAddr = 2'b00;
 Ren = 1;
 #20;
 RAddr = 2'b11;
 #20;
 Ren = 0;
 Rst = 1;
 #20;
 Rst = 0; 
 RAddr = 2'b01;
 Ren = 1;
 #20;
 $finish;
end
endmodule