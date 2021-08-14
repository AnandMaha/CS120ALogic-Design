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
