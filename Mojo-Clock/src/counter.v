module counter #(
	parameter CTR_TOP = 255,
	parameter CTR_LEN = 8
)(
	input clk,
	input rst,
	output overflow
);

reg [CTR_LEN-1:0] ctr_d, ctr_q;
reg overflow_d, overflow_q;

assign overflow = overflow_q;

always @(*) begin
	ctr_d = ctr_q + 1'b1;
	overflow_d = 1'b0;

	if (ctr_q == CTR_TOP-1) begin
		ctr_d = 1'd0;
		overflow_d = 1'b1;
	end
end

always @(posedge clk) begin
	if (rst) begin
		ctr_q <= 1'b0;
	end else begin
		ctr_q <= ctr_d;
	end

	overflow_q <= overflow_d;
end

endmodule
