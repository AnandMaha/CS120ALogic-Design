`timescale 1ns/1ns
`include "lab4_flight.v"
module fasystem_tb;
reg clk;
reg call_button;
reg cancel_button;
wire D;
fasystem uut( .clk(clk), .call_button(call_button), .cancel_button(cancel_button), .D(D));
always #5 clk=~clk;
initial begin
 $dumpfile("lab4_flight.vcd");
 $dumpvars(0, fasystem_tb);
 clk=0;
 call_button=0;
 cancel_button=0;
 #10; 
 call_button=1; #40;
 cancel_button=1; #15;
 call_button=0; #15;
 cancel_button=0; #25;
 call_button=1; #15;
 call_button=0; #45;
 cancel_button = 1;#15;
$finish;
end
endmodule