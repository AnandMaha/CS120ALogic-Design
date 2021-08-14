module mfreg(
input clk,
input [3:0] I,
input rst, ld, shr, shl, shin,
output [3:0] Q);

reg [3:0] R;

always @(posedge clk) begin
	if(rst == 1'b1) begin
		R <= 4'b0000;
	end
	else if(ld == 1'b1) begin
		R <= I;
	end
	else if(shr == 1'b1) begin
		R[3] <= shin; R[2] <= R[3]; R[1] <= R[2]; R[0] <= R[1];
	end
	else if(shl == 1'b1) begin
		R[3] <= R[2]; R[2] <= R[1]; R[1] <= R[0]; R[0] <= shin;
	end
end

assign Q = R;

endmodule;