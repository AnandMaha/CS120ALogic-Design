module edgedetector_moore( 
 input wire clk, 
 input wire signal,
 output reg outedge ); 
wire slow_clk ; 
reg [1:0] c_state ; 
reg [1:0] r_state ; 
localparam ZERO = 'd0; 
localparam CHANGE = 'd1; 
localparam ONE = 'd2; 
clkdiv c1(clk, slow_clk ); 
// Comb. logic. 
always @(*) begin 
 case (r_state) 
 
 ZERO : begin
	outedge = 0;
	if(signal == 1) begin
		c_state = CHANGE;
	end  
	else begin
		c_state = ZERO;
	end
 end 
 CHANGE : begin
	outedge = 1;
	if(signal == 1) begin
		c_state = ONE;
	end  
	else begin
		c_state = ZERO;
	end
 end 
 ONE : begin
	outedge = 0;
	if(signal == 1) begin
		c_state = ONE;
	end  
	else begin
		c_state = ZERO;
	end
 end 
 default : begin 
	 c_state = ZERO ; 
	 r_state = ZERO;
	 outedge = 'd0 ; 
 end
 
 endcase 
end 
// --------------------------------- 
// Seq. logic 
// --------------------------------- 
always @( posedge slow_clk ) begin 
 r_state <= c_state ; 
end
endmodule

module edgedetector_mealy( 
 input wire clk, 
 input wire signal,
 output reg outedge ); 
wire slow_clk ; 
reg c_state ; 
reg r_state ; 
localparam ZERO = 'd0; 
localparam ONE = 'd1; 
clkdiv c1(clk, slow_clk ); 
// Comb. logic. 
always @(*) begin 
 case (r_state) 
 
 ZERO : begin
	if(signal == 1) begin
		outedge = 1;
		c_state = ONE;
	end  
	else begin
		outedge = 0;
		c_state = ZERO;
	end
 end 
 ONE : begin
	if(signal == 1) begin
		outedge = 0;
		c_state = ONE;
	end  
	else begin
		outedge = 0;
		c_state = ZERO;
	end
 end 
 default : begin 
	 c_state = ZERO; 
	 r_state = ZERO;
	 outedge = 0 ; 
 end
 
 endcase 
end 
// --------------------------------- 
// Seq. logic 
// --------------------------------- 
always @( posedge slow_clk ) begin 
 r_state <= c_state ; 
end
endmodule

module clkdiv(input clk, output clk_out); 
 
 reg [4:0] COUNT; 
 initial begin
	COUNT <= 0;
end
assign clk_out = COUNT[4];
 always @(posedge clk) 
 begin 
	COUNT = COUNT + 1;
 end 
 
endmodule