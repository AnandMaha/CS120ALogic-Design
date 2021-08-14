`timescale 1ns / 1ps
module laser_surgery_sys
(
	input wire b ,
	input wire clk ,
	output reg light
);

wire timer;
reg reset;
reg [31:0] clock_per = 32'd4100; // 82 * 10^-6 / (20*10^-9)

reg [1:0] current_state ; 
reg [1:0] next_state ; 

// --------------------------------------
// Comb. Logic - FSM  
// --------------------------------------

localparam OFF   = 2'b00 ; 
localparam START = 2'b01 ; 
localparam ON    = 2'b10 ; 

always @(*) begin 
 case (current_state) 
 
 OFF : begin
	light = 0;
	reset = 1;
	if(b == 1) begin
		next_state = START;
	end  
	else begin
		next_state = OFF;
	end
 end 
 START : begin
	light = 0;
	reset = 0;
	next_state = ON;
 end 
 ON : begin
	light = 1;
	reset = 0;
	if(timer == 1) begin
		next_state = OFF;
	end  
	else begin
		next_state = ON;
	end
 end 
 default : begin 
	 current_state = OFF; 
	 light = 0 ; 
	 reset = 0;
 end
 
 endcase 
end 


// --------------------------------------
// Sequential logic 
// --------------------------------------

always @(posedge clk) begin
	current_state = next_state ; 
end 

// --------------------------------------
// Timer instantiation 
// --------------------------------------

timerst  timer_st(
		.clk(clk), 
		.load(reset), 
		.enable(!reset) , 
		.M(clock_per) , 
		.tick(timer)
	);
	
endmodule

module timerst(
input wire clk, load, enable,
input wire [31:0] M, output tick );

reg [31:0] register;
always @(posedge clk) begin
	if(load == 1'b1) begin
		register <= M - 32'd1;
	end
end

wire [31:0] dcounterin;
assign dcounterin = (load == 1'b1) ? M - 32'd1 : register;

reg [31:0] downcounter;
always @(posedge clk) begin
	if((load == 1'b1) || (tick == 1'b1)) begin
		downcounter <= dcounterin;
	end
	else if (enable == 1'b1) begin
		downcounter <= downcounter - 32'd1;
	end
end

assign tick = (downcounter == 32'd0) ? 1'b1 : 1'b0;

endmodule
