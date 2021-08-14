// module clkdiv(input wire clk, output reg clk_out); 
 
 // reg [4:0] COUNT; 
 // initial begin
	// COUNT <= 0;
// end
 // always @(posedge clk) 
 // begin 
	// if(COUNT == 31) begin
		// clk_out <= 1;
	// end
	// COUNT <= COUNT + 1;
 // end 
 
// endmodule

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