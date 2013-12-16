module button_conditioner (
	input clk,
	input btn,
	output out,
	output long
	);

localparam CTR_LEN = 26;

reg max_d, max_q;
reg pressed_d, pressed_q;
reg [CTR_LEN-1:0] ctr_d, ctr_q;
reg [1:0] sync_d, sync_q;

assign out = pressed_d & ~pressed_q;
assign long = max_d & ~max_q;

always @(*) begin
	sync_d[0] = btn;
	sync_d[1] = sync_q[0];
	pressed_d = 1'b0;

	if (ctr_q == {CTR_LEN{1'b1}}) begin
		ctr_d = ctr_q;
		max_d = 1'b1;
	end else begin
		ctr_d = ctr_q + 1'b1;
		max_d = 1'b0;
	end

	if (!sync_q[1]) begin
		if (ctr_q < {CTR_LEN{1'b1}} && ctr_q > {18{1'b1}})
			pressed_d = 1'b1;
		ctr_d = 19'd0;
	end
end

always @(posedge clk) begin
	ctr_q <= ctr_d;
	pressed_q <= pressed_d;
	sync_q <= sync_d;
	max_q <= max_d;
end

endmodule