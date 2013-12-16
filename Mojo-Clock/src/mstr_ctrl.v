module mstr_ctrl(
	input clk,
	input rst,
	input up,
	input down,
	input select,
	input select_long,
	output [3:0] adc_channel,
	input [9:0] sample,
	input [3:0] sample_channel,
	input new_sample,
	input [15:0] aud_sample,
	input aud_new,
	output rtc_sclk,
	output rtc_cs,
	output rtc_mosi,
	input rtc_miso,
	input rtc_32khz,
	input rtc_int,
	output [7:0]d1_c,
	output [7:0]d1_r,
	output [7:0]d1_g,
	output [7:0]d1_b,
	output [7:0]d2_c,
	output [7:0]d2_r,
	output [7:0]d2_g,
	output [7:0]d2_b,
	output [7:0] led
);

localparam STATE_SIZE = 1;
localparam CREATE_FRAME = 1'b0,
		   WAIT_FLIP = 1'b1;

reg [STATE_SIZE-1:0] state_d, state_q;

localparam MODE_SIZE = 3;
localparam CLOCK_MODE = 0,
		   SET_HOUR = 1,
		   SET_MIN = 2,
		   FFT_MODE = 3,
		   FFT_RAINBOW_MODE = 4,
		   RAINBOW_MODE = 5;

reg [MODE_SIZE-1:0] mode_d, mode_q;

assign adc_channel = 4'd9;

reg [3:0] x_d, x_q;
reg [2:0] y_d, y_q;
reg [7:0] red_d, red_q;
reg [7:0] green_d, green_q;
reg [7:0] blue_d, blue_q;
reg valid_d, valid_q;
reg flip_d, flip_q;
wire flipped;
reg wait_fft_d, wait_fft_q;
reg [8:0] frequency;
wire [7:0] fft_sample;
wire fft_valid;

fft_calc fft_calc (
	.clk(clk),
	.rst(rst),
	.sample_in(aud_sample),
	.new_sample_in(aud_new),
	.frame_full(),
	.frequency(frequency),
	.sample(fft_sample)
);

led_display led_display (
	.clk(clk),
	.rst(rst),
	.x(x_q),
	.y(y_q),
	.red(red_q),
	.green(green_q),
	.blue(blue_q),
	.valid(valid_q),
	.flip(flip_q),
	.flipped(flipped),
	.d1_c(d1_c),
	.d1_r(d1_r),
	.d1_g(d1_g),
	.d1_b(d1_b),
	.d2_c(d2_c),
	.d2_r(d2_r),
	.d2_g(d2_g),
	.d2_b(d2_b)
);

reg [3:0] number;
reg [1:0] rom_x;
reg [3:0] rom_y;
wire active;

number_rom number_rom (
	.clk(clk),
	.number(number),
	.x(rom_x),
	.y(rom_y),
	.active(active)
);

wire [3:0] sec_1;
wire [2:0] sec_10;
wire [3:0] min_1;
wire [2:0] min_10;
wire [3:0] hour_1;
wire hour_10;
wire pm;
wire new_time;
wire need_config;
reg set_time;
reg [3:0] min_1_d, min_1_q;
reg [2:0] min_10_d, min_10_q;
reg [3:0] hour_1_d, hour_1_q;
reg hour_10_d, hour_10_q;
reg pm_d, pm_q;

reg adc_timeout_d, adc_timeout_q;
reg [7:0] light_d, light_q;
reg [7:0] brightness;

reg [25:0] blinker_d, blinker_q;

reg [10:0] hue;
reg [11:0] sum;
reg show;
reg [26:0] ctr_d, ctr_q;

rtc rtc (
	.clk(clk),
	.rst(rst),
	.rtc_sclk(rtc_sclk),
	.rtc_cs(rtc_cs),
	.rtc_mosi(rtc_mosi),
	.rtc_miso(rtc_miso),
	.rtc_32khz(rtc_32khz),
	.rtc_int(rtc_int),
	.need_config(need_config),
	.new_time(new_time),
	.sec_1(sec_1),
	.sec_10(sec_10),
	.min_1(min_1),
	.min_10(min_10),
	.hour_1(hour_1),
	.hour_10(hour_10),
	.pm(pm),
	.set_time(set_time),
	.set_min_1(min_1_q),
	.set_min_10(min_10_q),
	.set_hour_1(hour_1_q),
	.set_hour_10(hour_10_q),
	.set_pm(pm_q)
);

//assign led = {new_sample, sample_channel};
assign led = 8'b0;

always @(*) begin
	state_d = state_q;
	mode_d = mode_q;
	red_d = 8'h00;
	green_d = 8'h00;
	blue_d = 8'h00;
	flip_d = 1'b0;
	valid_d = 1'b0;
	x_d = x_q;
	y_d = y_q;
	frequency = 9'bx;
	wait_fft_d = 1'b0;

	set_time = 1'b0;
	min_1_d = min_1_q;
	min_10_d = min_10_q;
	hour_1_d = hour_1_q;
	hour_10_d = hour_10_q;
	pm_d = pm_q;
	blinker_d = blinker_q + 1'b1;

	number = 4'bx;
	rom_x = 2'bx;
	rom_y = 4'bx; 

	light_d = light_q;

	show = 1'b0;
	hue = 12'bx;
	sum = 12'bx;
	ctr_d = ctr_q;

	adc_timeout_d = adc_timeout_q;

	if (blinker_q == 25'b0)
		adc_timeout_d = 1'b1;

	if (new_sample && adc_timeout_q && sample_channel == 4'd9) begin
		light_d = sample[9:2];
		adc_timeout_d = 1'b0;
	end

	if (light_q > 8'd15) begin
		brightness = 8'hff;
	end else if (light_q < 8'd1) begin
		//brightness = 8'h05;
		brightness = 8'h01;
	end else begin
		brightness = {light_q[3:0], light_q[3:0]};
	end

	case (mode_q)
		CLOCK_MODE: begin
			if (need_config) begin
				min_1_d = 4'd0;
				min_10_d = 3'd0;
				hour_1_d = 4'd2;
				hour_10_d = 1'd1;
				pm_d = 1'd1;
				mode_d = SET_HOUR;
			end

			if (new_time) begin
				min_1_d = min_1;
				min_10_d = min_10;
				hour_1_d = hour_1;
				hour_10_d = hour_10;
				pm_d = pm;
			end

			if (select_long) begin
				mode_d = SET_HOUR;
			end

			if (select) begin
				mode_d = FFT_MODE;
			end
		end
		SET_HOUR: begin
			if (up) begin
				hour_1_d = hour_1_q + 1'b1;
				if (hour_10_q == 1'b1 && hour_1_q == 4'd2) begin
					hour_10_d = 1'b0;
					hour_1_d = 4'd1;
					pm_d = ~pm_q;
				end

				if (hour_1_q == 4'd9) begin
					hour_1_d = 4'd0;
					hour_10_d = 1'd1;
				end
			end
			if (down) begin
				hour_1_d = hour_1_q - 1'b1;
				if (hour_10_q == 1'b0 && hour_1_q == 4'd1) begin
					hour_10_d = 1'b1;
					hour_1_d = 4'd2;
					pm_d = ~pm_q;
				end

				if (hour_10_q == 1'b1 && hour_1_q == 4'd0) begin
					hour_1_d = 4'd9;
					hour_10_d = 1'd0;
				end
			end
			if (select) begin
				mode_d = SET_MIN;
			end
		end
		SET_MIN: begin
			if (up) begin
				min_1_d = min_1_q + 1'b1;
				if (min_1_q == 4'd9) begin
					min_1_d = 4'd0;
					min_10_d = min_10_q + 1'b1;
					if (min_10_q == 3'd5) begin
						min_10_d = 3'd0;
					end
				end
			end
			if (down) begin
				min_1_d = min_1_q - 1'b1;
				if (min_1_q == 4'd0) begin
					min_1_d = 4'd9;
					min_10_d = min_10_q - 1'b1;
					if (min_10_q == 3'd0) begin
						min_10_d = 3'd5;
					end
				end
			end
			if (select) begin
				set_time = 1'b1;
				mode_d = CLOCK_MODE;
			end
		end
		FFT_MODE: begin
			if (select) begin
				mode_d = FFT_RAINBOW_MODE;
			end
		end
		FFT_RAINBOW_MODE, RAINBOW_MODE: begin
			if (select) begin
				if (mode_q == FFT_RAINBOW_MODE)
					mode_d = RAINBOW_MODE;
				else
					mode_d = CLOCK_MODE;
			end

			ctr_d = ctr_q + 1'b1;

			if(ctr_q == {11'd1535,{16{1'b1}}})
				ctr_d = 26'b0;

			sum = (x_d<<5) + (y_d<<6) + ctr_q[26:16];

			if (sum >= 11'd1536)
				hue = sum - 11'd1536;
			else
				hue = sum;

			if (hue >= 11'd1536)
				hue = hue - 11'd1536;
		end
	endcase

	case (state_q)
		CREATE_FRAME: begin
			wait_fft_d = ~wait_fft_q;
			if (wait_fft_q) begin
				x_d = x_q + 1'b1;
				if (x_q == 4'b1111) begin
					y_d = y_q + 1'b1;
					if (y_q == 3'b111) begin
						valid_d = 1'b0;
						flip_d = 1'b1;
						state_d = WAIT_FLIP;
					end
				end
			end 

			valid_d = ~wait_fft_q;

			case (mode_q)
				CLOCK_MODE, SET_HOUR, SET_MIN: begin
					if (x_d < 1) begin
						if (hour_10_q && y_d > 0)
							if (mode_q != SET_HOUR || blinker_q[24])
								red_d = brightness;
					end 

					if (x_d < 6 && x_d > 1) begin
						number = hour_1_q;
						rom_x = x_d - 4'd2;
						rom_y = ~y_d;
						if (active && (mode_q != SET_HOUR || blinker_q[24]))
							red_d = brightness;
					end

					if (x_d < 11 && x_d > 6) begin
						number = min_10_q;
						rom_x = x_d - 4'd7;
						rom_y = ~y_d;
						if (active && (mode_q != SET_MIN || blinker_q[24]))
							red_d = brightness;
					end

					if (x_d > 11) begin
						number = min_1_q;
						rom_x = x_d - 4'd12;
						rom_y = ~y_d;
						if (active && (mode_q != SET_MIN || blinker_q[24]))
							red_d = brightness;
					end

					if (x_d == 6 && (y_d == 2 || y_d == 6)) begin
						if (blinker_q[25])
							green_d = brightness;
					end

					if (x_d == 6 && y_d == 1) begin
						if (pm_q) begin
							blue_d = brightness;
						end
					end
				end
				FFT_MODE: begin;
					frequency = ~(x_d + 9'd1);
					case (y_q)
						3'd7: begin
							if (fft_sample > 8'd130)
								red_d = 8'hff;
						end
						3'd6: begin
							if (fft_sample > 8'd100)
								red_d = 8'hff;
						end
						3'd5: begin
							if (fft_sample > 8'd70) begin
								red_d = 8'hff;
								green_d = 8'haf;
							end
						end
						3'd4: begin
							if (fft_sample > 8'd40) begin
								red_d = 8'hff;
								green_d = 8'haf;
							end
						end
						3'd3: begin
							if (fft_sample > 8'd20)
								green_d = 8'hff;
						end
						3'd2: begin
							if (fft_sample > 8'd10)
								green_d = 8'hff;
						end
						3'd1: begin
							if (fft_sample > 8'd5)
								green_d = 8'hff;
						end
						3'd0: begin
							if (fft_sample > 8'd3)
								green_d = 8'hff;
						end
					endcase
				end
				FFT_RAINBOW_MODE, RAINBOW_MODE: begin
					frequency = ~(x_d + 9'd1);

					case (y_q)
						3'd7: begin
							if (fft_sample > 8'd130)
								show = 1'b1;
						end
						3'd6: begin
							if (fft_sample > 8'd100)
								show = 1'b1;
						end
						3'd5: begin
							if (fft_sample > 8'd70)
								show = 1'b1;
						end
						3'd4: begin
							if (fft_sample > 8'd40)
								show = 1'b1;
						end
						3'd3: begin
							if (fft_sample > 8'd20)
								show = 1'b1;
						end
						3'd2: begin
							if (fft_sample > 8'd10)
								show = 1'b1;
						end
						3'd1: begin
							if (fft_sample > 8'd5)
								show = 1'b1;
						end
						3'd0: begin
							if (fft_sample > 8'd3)
								show = 1'b1;
						end
					endcase

					if (show || mode_q == RAINBOW_MODE) begin
						if (hue < 11'd256) begin
							red_d = 8'hff;
							green_d = hue;
							blue_d = 8'h00;
						end else if (hue < 11'd512) begin
							red_d = 11'd511 - hue;
							blue_d = 8'h00;
							green_d = 8'hff;
						end else if (hue < 11'd768) begin
							red_d = 8'h00;
							blue_d = hue - 11'd512;
							green_d = 8'hff;
						end else if (hue < 11'd1024) begin
							red_d = 8'h00;
							blue_d = 8'hff;
							green_d = 11'd1023 - hue;
						end else if (hue < 11'd1280) begin
							red_d = hue - 11'd1024;
							blue_d = 8'hff;
							green_d = 8'h00;
						end else begin
							red_d = 8'hff;
							blue_d = 11'd1535 - hue;
							green_d = 8'h00;
						end
					end
				end
			endcase
		end
		WAIT_FLIP: begin
			if (flipped) begin
				state_d = CREATE_FRAME;
			end
		end
	endcase
end

always @(posedge clk) begin
	if (rst) begin
		state_q <= CREATE_FRAME;
		mode_q <= CLOCK_MODE;
		x_q <= 4'b0;
		y_q <= 3'b0;
	end else begin
		state_q <= state_d;
		mode_q <= mode_d;
		x_q <= x_d;
		y_q <= y_d;
	end

	blinker_q <= blinker_d;
	wait_fft_q <= wait_fft_d;
	red_q <= red_d;
	green_q <= green_d;
	blue_q <= blue_d;
	valid_q <= valid_d;
	flip_q <= flip_d;
	min_1_q <= min_1_d;
	min_10_q <= min_10_d;
	hour_1_q <= hour_1_d;
	hour_10_q <= hour_10_d;
	pm_q <= pm_d;
	light_q <= light_d;
	adc_timeout_q <= adc_timeout_d;
	ctr_q <= ctr_d;
end

endmodule