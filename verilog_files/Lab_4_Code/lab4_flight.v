module fasystem (
input wire clk,
input wire call_button,
input wire cancel_button,
output reg D
);
reg Q;
always @(posedge clk) begin
	D = (call_button) | (!cancel_button & Q);
	Q = D;
end
endmodule