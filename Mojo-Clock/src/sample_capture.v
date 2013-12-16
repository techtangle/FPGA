module sample_capture #(
	parameter ADDR_SIZE = 8
	) (
	input clk,
	input rst,

	input [15:0] sample_in,
	input new_sample_in,
	output frame_full,

	output [15:0] sample_out,
	output new_sample_out,
	output frame_end,
	input read_ready
);

reg wea;
reg frame_d, frame_q;
reg [ADDR_SIZE-1:0] addra_d, addra_q;
reg [ADDR_SIZE-1:0] addrb_d, addrb_q;
reg new_sample_out_d, new_sample_out_q;
reg frame_end_d, frame_end_q;
reg frame_full_d, frame_full_q;
reg [15:0] sample_out_d, sample_out_q;
wire [15:0] doutb;

assign frame_full = frame_full_q;
assign new_sample_out = new_sample_out_q;
assign frame_end = frame_end_q;
assign sample_out = sample_out_q;

sample_ram sample_ram (
	.clka(clk), // input clka
	.wea(wea), // input [0 : 0] wea
	.addra({frame_q, addra_q}), // input [6 : 0] addra
	.dina(sample_in), // input [7 : 0] dina
	.clkb(clk), // input clkb
	.addrb({!frame_q, addrb_q}), // input [6 : 0] addrb
	.doutb(doutb) // output [7 : 0] doutb
);

always @(*) begin
	sample_out_d = doutb;
	wea = 1'b0;
	frame_full_d = frame_full_q;
	frame_end_d = frame_end_q;
	addra_d = addra_q;
	addrb_d = addrb_q;
	frame_d = frame_q;
	new_sample_out_d = 1'b0;

	if (new_sample_in && !frame_full_q) begin
		wea = 1'b1;
		addra_d = addra_q + 1'b1;
		if (addra_q == {ADDR_SIZE{1'b1}}) begin
			frame_full_d = 1'b1;
		end
	end

	if (read_ready && !frame_end_q) begin
		new_sample_out_d = 1'b1;
		addrb_d = addrb_q + 1'b1;
		if (addrb_q == {ADDR_SIZE{1'b1}}) begin
			frame_end_d = 1'b1;
		end
	end

	if (frame_end_q && frame_full_q) begin
		frame_d = ~frame_q;
		frame_full_d = 1'b0;
		frame_end_d = 1'b0;
		addra_d = 1'b0;
		addrb_d = 1'b0;
	end

end

always @(posedge clk) begin
	if (rst) begin
		addra_q <= 1'b0;
		addrb_q <= 1'b0;
		frame_q <= 1'b0;
		new_sample_out_q <= 1'b0;
		frame_end_q <= 1'b0;
		frame_full_q <= 1'b0;
	end else begin
		addra_q <= addra_d;
		addrb_q <= addrb_d;
		frame_q <= frame_d;
		new_sample_out_q <= new_sample_out_d;
		frame_end_q <= frame_end_d;
		frame_full_q <= frame_full_d;
	end

	sample_out_q <= sample_out_d;
end

endmodule