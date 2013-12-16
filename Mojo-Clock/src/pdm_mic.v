module pdm_mic (
	input clk,
	input rst,
	output mic_clk,
	input mic_data,
	output [15:0] sample,
	output new_sample
);

reg mic_clk_d, mic_clk_q;
reg mic_data_d, mic_data_q;
reg new_data_d, new_data_q;
wire overflow;

assign mic_clk = mic_clk_q;

counter #(.CTR_TOP(12), .CTR_LEN(4)) clk_gen (
	.clk(clk),
	.rst(rst),
	.overflow(overflow)
);

fir_compiler_v6_3 pdm_fir (
  .aclk(clk), // input aclk
  .s_axis_data_tvalid(new_data_q), // input s_axis_data_tvalid
  .s_axis_data_tready(), // output s_axis_data_tready
  .s_axis_data_tdata(mic_data_q), // input [7 : 0] s_axis_data_tdata
  .m_axis_data_tvalid(new_sample), // output m_axis_data_tvalid
  .m_axis_data_tdata(sample) // output [15 : 0] m_axis_data_tdata
);

always @(*) begin
	new_data_d = 1'b0;
	mic_data_d = mic_data_q;
	mic_clk_d = mic_clk_q;

	if (overflow) begin
		mic_clk_d = ~mic_clk_q;
		if (mic_clk_q == 1'b0) begin //rising edge
			mic_data_d = mic_data;
			new_data_d = 1'b1;
		end
	end

end

always @(posedge clk) begin
	if (rst) begin
	end else begin

	end
	new_data_q <= new_data_d;
	mic_data_q <= mic_data_d;
	mic_clk_q <= mic_clk_d;
end

endmodule