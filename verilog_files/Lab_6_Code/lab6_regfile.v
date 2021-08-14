module regfile(
input wire [1:0] RAddr, WAddr,
input wire Ren, Wen,
input wire [31:0] WData,
input wire Rst, Clk,
output reg [31:0] RData );

reg [31:0] regfile [0:3];

always @(posedge Clk) begin
	if(Rst == 1'b1) begin
		regfile[0] <= 32'd0;
		regfile[1] <= 32'd0;
		regfile[2] <= 32'd0;
		regfile[3] <= 32'd0;
	end
	else if(Wen == 1'b1) begin
		regfile[WAddr] <= WData;
	end
end

always @(*) begin
	if(Ren == 1'b1) begin
		RData = regfile[RAddr];
	end
	else begin
		RData = 32'hzzz_zzzz;
	end
end

endmodule