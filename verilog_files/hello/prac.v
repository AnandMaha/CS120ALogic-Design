module hamming_dist( 
 input wire [3:0] A, 
 input wire [3:0] B,
 input wire enable,
 input wire clk,
 output reg [2:0] D,
 output reg Q
 ); 
 reg [3:0] T1;
 always @(posedge clk) begin
	if(enable == 1) begin
		T1 = A ^ B;
		D = 0;
		for(integer i = 0; i < 4; i++) begin
			if(T1[i] == 1)
				D = D + 1;
		end
		if(D > 2)
			Q = 1;
		else
			Q = 0;
	end
end

endmodule