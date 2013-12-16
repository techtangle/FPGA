module sample_capture_tb ();

reg clk, rst;
reg [7:0] sample_in;
reg new_sample_in;
reg read_ready;
wire frame_full;
wire [7:0] sample_out;
wire new_sample_out;
wire frame_end;

sample_capture dut (
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

initial begin
	clk = 1'b0;
	rst = 1'b1;
	repeat(6) #5 clk = ~clk;
	rst = 1'b0;
	forever #5 clk = ~clk;
end

integer i;

initial begin
	sample_in = 8'b0;
	new_sample_in = 1'b0;
	read_ready = 1'b1;
	sample_in = 8'b0;
	@(negedge rst)
	@(negedge clk);
	i = 0;
	repeat(200) begin
		@(posedge clk);
		sample_in = i;
		new_sample_in = 1'b1;
		if (!frame_full) begin
			i = i + 1;
			new_sample_in = 1'b1;
		end else begin
			new_sample_in = 1'b0;
		end
	end
	$finish;
end

endmodule