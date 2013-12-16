module fft_calc #(
	parameter SAMPLE_SIZE = 9
	)(
	input clk,
	input rst,

	input [15:0] sample_in,
	input new_sample_in,
	output frame_full,

	input [SAMPLE_SIZE-1:0] frequency,
	output [7:0] sample
	);

localparam FFT_SIZE = SAMPLE_SIZE + 9;

wire signed [31:0] fft_real, fft_imag;
wire signed [7:0] fft_real_scaled, fft_imag_scaled;
reg signed [15:0] fft_real_2_d, fft_real_2_q;
reg signed [15:0] fft_imag_2_d, fft_imag_2_q;
wire [16:0] fft_sum;
wire [15:0] fft_addr;
wire [15:0] fft_addr_delay;
wire fft_valid_d;
reg fft_valid_q;
wire fft_last;
wire fft_started;
wire fft_unexpected_last;
wire fft_missing_last;
wire fft_halt;
wire [8:0] fft_mag;
wire fft_mag_valid;

wire [15:0] sample_out;
wire new_sample_out;
wire frame_end;
wire read_ready;

reg frame_d, frame_q;

sample_capture #(.ADDR_SIZE(SAMPLE_SIZE)) sample_capture (
	.clk(clk),
	.rst(rst),
	.sample_in(sample_in),
	.new_sample_in(new_sample_in),
	.frame_full(frame_full),
	.sample_out(sample_out),
	.new_sample_out(new_sample_out),
	.frame_end(frame_end),
	.read_ready(read_ready)
	);

xfft_v8_0 fft_block ( 
  .aclk(clk), // input aclk
  .s_axis_config_tdata(8'h01), // input [7 : 0] s_axis_config_tdata
  .s_axis_config_tvalid(1'b0), // input s_axis_config_tvalid
  .s_axis_config_tready(), // output s_axis_config_tready
  .s_axis_data_tdata({16'h00, sample_out}), // input [15 : 0] s_axis_data_tdata
  .s_axis_data_tvalid(new_sample_out), // input s_axis_data_tvalid
  .s_axis_data_tready(read_ready), // output s_axis_data_tready
  .s_axis_data_tlast(frame_end), // input s_axis_data_tlast
  .m_axis_data_tdata({fft_imag, fft_real}), // output [31 : 0] m_axis_data_tdata
  .m_axis_data_tuser(fft_addr), // output [7 : 0] m_axis_data_tuser
  .m_axis_data_tvalid(fft_valid_d), // output m_axis_data_tvalid
  .m_axis_data_tlast(fft_last), // output m_axis_data_tlast
  .event_frame_started(fft_started), // output event_frame_started
  .event_tlast_unexpected(fft_unexpected_last), // output event_tlast_unexpected
  .event_tlast_missing(fft_missing_last), // output event_tlast_missing
  .event_data_in_channel_halt(fft_halt) // output event_data_in_channel_halt
);

assign fft_real_scaled = fft_real[FFT_SIZE-4:FFT_SIZE-11];
assign fft_imag_scaled = fft_imag[FFT_SIZE-4:FFT_SIZE-11];

assign fft_sum = fft_imag_2_q + fft_real_2_q;

pipeline #(.LENGTH(6), .WIDTH(16)) sample_pipe (
	.clk(clk),
	.in(fft_addr),
	.out(fft_addr_delay)
);

cordic_v5_0 sqrt_calc (
  .aclk(clk), // input aclk
  .s_axis_cartesian_tvalid(fft_valid_q), // input s_axis_cartesian_tvalid
  .s_axis_cartesian_tdata(fft_sum), // input [16 : 0] s_axis_cartesian_tdata
  .m_axis_dout_tvalid(fft_mag_valid), // output m_axis_dout_tvalid
  .m_axis_dout_tdata(fft_mag) // output [8 : 0] m_axis_dout_tdata
);

fft_output_ram fft_output_ram (
  .clka(clk), // input clka
  .wea(fft_mag_valid), // input [0 : 0] wea
  .addra({frame_q, fft_addr_delay[SAMPLE_SIZE-1:0]}), // input [9 : 0] addra
  .dina(fft_mag[7:0]), // input [15 : 0] dina
  .clkb(clk), // input clkb
  .addrb({!frame_q, frequency}), // input [9 : 0] addrb
  .doutb(sample) // output [15 : 0] doutb
);

always @(*) begin
	fft_real_2_d = fft_real_scaled * fft_real_scaled;
	fft_imag_2_d = fft_imag_scaled * fft_imag_scaled;
	if (fft_last)
		frame_d = ~frame_q;
	else
		frame_d = frame_q;
end 

always @(posedge clk) begin
	if (rst) begin
		frame_q <= 1'b0;
	end else begin
		frame_q <= frame_d;
	end
	fft_real_2_q <= fft_real_2_d;
	fft_imag_2_q <= fft_imag_2_d;
	fft_valid_q <= fft_valid_d;
end

endmodule