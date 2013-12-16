module buzzer (
	input clk,
	input rst,
	input enable,
	output speaker
	);

localparam CTR_SIZE = 14;

reg[CTR_SIZE-1:0] ctr_d, ctr_q;

assign speaker = enable ? ctr_q[CTR_SIZE-1] : 1'b0;

always @(ctr_q) begin
	ctr_d = ctr_q + 1'b1;
end

always @(posedge clk) begin
	if (rst)
		ctr_q <= 1'b0;
	else
		ctr_q <= ctr_d;
end

endmodule