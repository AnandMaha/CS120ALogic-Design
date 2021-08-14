module comp_sign(
input signed [3:0] A,
input signed [3:0] B,
output wire Gt, Eq, Lt);

assign Gt = (A > B) ? 1'b1 : 1'b0;
assign Eq = (A==B) ? 1'b1 : 1'b0;
assign Lt = (A < B) ? 1'b1 : 1'b0;

endmodule