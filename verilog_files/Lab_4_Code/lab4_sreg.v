module syncShiftReg (
input wire [3:0] B,
input wire clk,
input wire rst,
input wire shL,
output wire[3:0] Z
);

reg [3:0] R;

always @(posedge clk) begin
	if(rst == 1'b1) begin
		R <= 4'b0000;
	end 

	else if(shL == 1'b1) begin
		R[3] <= R[2]; R[2] <= R[1];
		R[1] <= R[0]; R[0] <= B[0];
	end 

	else begin
		R <= B;
	end

end

assign Z = R;

endmodule