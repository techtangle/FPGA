module led_display (
	input clk,
	input rst,
	input [3:0] x,
	input [2:0] y,
	input valid,
	input [7:0] red,
	input [7:0] green,
	input [7:0] blue,
	input flip,
	output flipped,
	output [7:0]d1_c,
	output [7:0]d1_r,
	output [7:0]d1_g,
	output [7:0]d1_b,
	output [7:0]d2_c,
	output [7:0]d2_r,
	output [7:0]d2_g,
	output [7:0]d2_b
	);

localparam STATE_SIZE = 1;
localparam LOAD_FRAME  = 1'd0,
		   WAIT_VSYNC  = 1'd1;

reg [STATE_SIZE-1:0] state_d, state_q;

reg page_d, page_q;
reg wea_d, wea_q;
reg [6:0] addra_d, addra_q;
wire [2:0] addrb;
wire [383:0] doutb;
reg [23:0] dina_d, dina_q;
wire vsync;
reg flipped_d, flipped_q;

assign flipped = flipped_q;

led_driver led_driver (
	.clk(clk),
	.rst(rst),
	.row(addrb),
	.values(doutb),
	.vsync(vsync),
	.d1_c(d1_c),
	.d1_r(d1_r),
	.d1_g(d1_g),
	.d1_b(d1_b),
	.d2_c(d2_c),
	.d2_r(d2_r),
	.d2_g(d2_g),
	.d2_b(d2_b)
	);

display_ram display_ram (
  .clka(clk), // input clka
  .wea(wea_q), // input [0 : 0] wea
  .addra({page_q, addra_q}), // input [7 : 0] addra
  .dina(dina_q), // input [23 : 0] dina
  .clkb(clk), // input clkb
  .addrb({~page_q, addrb}), // input [3 : 0] addrb
  .doutb(doutb) // output [383 : 0] doutb
);

always @(*) begin
	page_d = page_q;
	state_d = state_q;
	addra_d = addra_q;
	wea_d = 1'b0;
	dina_d = dina_q;
	flipped_d = 1'b0;

	case (state_q)
		LOAD_FRAME: begin
			if (valid) begin
				wea_d = 1'b1;
				dina_d = {red, green, blue};
				addra_d = {y,x};
			end
			if (flip) begin
				state_d = WAIT_VSYNC;
			end
		end
		WAIT_VSYNC: begin
			if (vsync) begin
				state_d = LOAD_FRAME;
				page_d = ~page_q;
				flipped_d = 1'b1;
			end
		end
		default:
			state_d = LOAD_FRAME;
	endcase
end


always @(posedge clk) begin
	if (rst) begin
		state_q <= LOAD_FRAME;
		page_q <= 1'b0;
	end else begin
		state_q <= state_d;
		page_q <= page_d;
	end

	addra_q <= addra_d;
	wea_q <= wea_d;
	dina_q <= dina_d;
	flipped_q <= flipped_d;
end

endmodule