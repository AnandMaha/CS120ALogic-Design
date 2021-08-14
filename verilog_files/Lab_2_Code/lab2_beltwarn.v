module beltwarn_s(
	input wire K, P, S,
	output wire W );

wire N1, N2;

not Inv_1 (N2, S);
and And2_1(N1, K, P);
and And2_2(W, N1, N2);

endmodule

module beltwarn_b(
	input wire K, P, S,
	output reg W );


always@(K,P,S) begin
	W <= K & P & !S;
end

endmodule