module fft_calc_tb ();

reg clk, rst;
reg [7:0] sample_in;
reg new_sample_in;
wire frame_full;

reg [8:0] frequency;
wire [18:0] fft_sample;

fft_calc fft_calc (
	.clk(clk),
	.rst(rst),
	.sample_in(sample_in),
	.new_sample_in(new_sample_in),
	.frame_full(frame_full),
	
	.frequency(frequency),
	.sample(fft_sample)
	);

initial begin
	clk = 1'b0;
	rst = 1'b1;
	repeat(6) #5 clk = ~clk;
	rst = 1'b0;
	forever #5 clk = ~clk;
end

integer i;

always @(posedge clk) begin
	frequency = frequency + 1'b1;
end

initial begin
	frequency = 0;
	sample_in = 8'b0;
	new_sample_in = 1'b0;
	sample_in = 8'b0;
	@(negedge rst)
	@(negedge clk);
	repeat(200) begin
		for (i = 0; i < 128; i=i+1) begin
			@(posedge clk);
			sample_in = i;
			new_sample_in = 1'b1;
			if (!frame_full) begin
				new_sample_in = 1'b1;
			end else begin
				new_sample_in = 1'b0;
			end
		end
		for (i = 128; i > 0; i=i-1) begin
			@(posedge clk);
			sample_in = i;
			new_sample_in = 1'b1;
			if (!frame_full) begin
				new_sample_in = 1'b1;
			end else begin
				new_sample_in = 1'b0;
			end
		end
	end
	$finish;
end

endmodule