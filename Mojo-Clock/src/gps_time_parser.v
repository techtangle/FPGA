module gps_time_parser (
	input clk,
	input rst,
	input [7:0] gps_data,
	input gps_new,
	input [4:0] offset,
	output digit_1,
	output [3:0] digit_2,
	output [3:0] digit_3,
	output [3:0] digit_4,
	output [5:0] seconds,
	output pm
	);

localparam STATE_SIZE = 4;
localparam WAIT_MONEY = 4'd0,
		   WAIT_G = 4'd1,
		   WAIT_P = 4'd2,
		   WAIT_TYPE = 4'd3,
		   WAIT_M = 4'd4,
		   WAIT_C = 4'd5,
		   WAIT_G_2 = 4'd6,
		   WAIT_A = 4'd7,
		   WAIT_COM = 4'd8,
		   READ_DIGIT_1 = 4'd9,
		   READ_DIGIT_2 = 4'd10,
		   READ_DIGIT_3 = 4'd11,
		   READ_DIGIT_4 = 4'd12,
		   READ_DIGIT_5 = 4'd13,
		   READ_DIGIT_6 = 4'd14;



reg digit_1_d, digit_1_q;
reg [3:0] digit_2_d, digit_2_q;
reg [3:0] digit_3_d, digit_3_q;
reg [3:0] digit_4_d, digit_4_q;
reg [5:0] seconds_d, seconds_q;
reg pm_d, pm_q;

reg [3:0] prev_digit_d, prev_digit_q;

reg [STATE_SIZE-1:0] state_d, state_q;

wire [7:0] number = gps_data - 8'h30;
reg [5:0] hour_tmp;

assign digit_1 = digit_1_q;
assign digit_2 = digit_2_q;
assign digit_3 = digit_3_q;
assign digit_4 = digit_4_q;
assign seconds = seconds_q;
assign pm = pm_q;

always @(*) begin
	state_d = state_q;
	digit_1_d = digit_1_q;
	digit_2_d = digit_2_q;
	digit_3_d = digit_3_q;
	digit_4_d = digit_4_q;
	seconds_d = seconds_q;
	pm_d = pm_q;
	prev_digit_d = prev_digit_q;

	if (gps_new) begin
		case (state_q)
			WAIT_MONEY: begin
				if (gps_data == 8'h24)
					state_d = WAIT_G;
			end
			WAIT_G: begin
				if (gps_data == 8'h47)
					state_d = WAIT_P;
				else
					state_d = WAIT_MONEY;
			end
			WAIT_P: begin
				if (gps_data == 8'h50)
					state_d = WAIT_TYPE;
				else
					state_d = WAIT_MONEY;
			end
			WAIT_TYPE: begin
				if (gps_data == 8'h52)
					state_d = WAIT_M;
				else if (gps_data == 8'h47)
					state_d = WAIT_G_2;
				else
					state_d = WAIT_MONEY;
			end
			WAIT_M: begin
				if (gps_data == 8'h4D)
					state_d = WAIT_C;
				else
					state_d = WAIT_MONEY;
			end
			WAIT_C: begin
				if (gps_data == 8'h43)
					state_d = WAIT_COM;
				else
					state_d = WAIT_MONEY;
			end
			WAIT_G_2: begin
				if (gps_data == 8'h47)
					state_d = WAIT_A;
				else
					state_d = WAIT_MONEY;
			end
			WAIT_A: begin
				if (gps_data == 8'h41)
					state_d = WAIT_COM;
				else
					state_d = WAIT_MONEY;
			end
			WAIT_COM: begin
				if (gps_data == 8'h2C)
					state_d = READ_DIGIT_1;
				else
					state_d = WAIT_MONEY;
			end
			READ_DIGIT_1: begin
				state_d = READ_DIGIT_2;
				prev_digit_d = number;
			end
			READ_DIGIT_2: begin
				state_d = READ_DIGIT_3;
				hour_tmp = prev_digit_q * 4'd10 + number + offset;
				if (hour_tmp >= 6'd24)
					hour_tmp = hour_tmp - 6'd24;
				if (hour_tmp >= 6'd12) begin
					pm_d = 1'b1;
				end else begin
					pm_d = 1'b0;
				end
				if (hour_tmp > 6'd12)
					hour_tmp = hour_tmp - 6'd12;
				if (hour_tmp >= 10) begin
					digit_1_d = 1'b1;
					digit_2_d = hour_tmp - 4'd10;
				end else if (hour_tmp == 6'b0) begin
					digit_1_d = 1'd1;
					digit_2_d = 4'd2;
				end else begin
					digit_1_d = 1'b0;
					digit_2_d = hour_tmp;
				end
			end
			READ_DIGIT_3: begin
				state_d = READ_DIGIT_4;
				digit_3_d = number;
			end
			READ_DIGIT_4: begin
				state_d = READ_DIGIT_5;
				digit_4_d = number;
			end
			READ_DIGIT_5: begin
				state_d = READ_DIGIT_6;
				prev_digit_d = number;
			end
			READ_DIGIT_6: begin
				state_d = WAIT_MONEY;
				seconds_d = prev_digit_q * 4'd10 + number;
			end
			default: begin
				state_d = WAIT_MONEY;
			end
		endcase
	end

end

always @(posedge clk) begin
	if (rst) begin
		state_q <= WAIT_MONEY;
		digit_1_q <= 1'b0;
		digit_2_q <= 4'b0;
		digit_3_q <= 4'b0;
		digit_4_q <= 4'b0;
		seconds_q <= 6'b0;
		pm_q <= 1'b0;
	end else begin
		state_q <= state_d;
		digit_1_q <= digit_1_d;
		digit_2_q <= digit_2_d;
		digit_3_q <= digit_3_d;
		digit_4_q <= digit_4_d;
		seconds_q <= seconds_d;
		pm_q <= pm_d;
	end

	prev_digit_q <= prev_digit_d;
end

endmodule