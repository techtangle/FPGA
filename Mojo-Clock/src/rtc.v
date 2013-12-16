module rtc (
	input clk,
	input rst,
	output rtc_sclk,
	output rtc_cs,
	output rtc_mosi,
	input rtc_miso,
	input rtc_32khz,
	input rtc_int,
	output need_config,
	output new_time,
	output [3:0] sec_1,
	output [2:0] sec_10,
	output [3:0] min_1,
	output [2:0] min_10,
	output [3:0] hour_1,
	output hour_10,
	output pm,
	input set_time,
	input [3:0] set_min_1,
	input [2:0] set_min_10,
	input [3:0] set_hour_1,
	input set_hour_10,
	input set_pm
);

localparam STATE_SIZE = 4;
localparam IDLE = 4'd0,
		   GET_CONFIG_ADDR = 4'd1,
		   GET_CONFIG_WAIT = 4'd2,
		   GET_CONFIG = 4'd3,
		   WRITE_CONFIG_WAIT = 4'd4,
		   WRITE_CONFIG_ADDR = 4'd5,
		   WAIT_FINISH = 4'd6,
		   WAIT_ADDR = 4'd7,
		   READ_SEC = 4'd8,
		   READ_MIN = 4'd9,
		   READ_HOUR = 4'd10,
		   SET_TIME = 4'd11,
		   SET_SEC = 4'd12,
		   SET_MIN = 4'd13,
		   SET_HOUR = 4'd14,
		   SET_WAIT = 4'd15;

reg [STATE_SIZE-1:0] state_d, state_q = GET_CONFIG_ADDR;

reg start;
reg [7:0] data_in;

reg [3:0] sec_1_d, sec_1_q;
reg [2:0] sec_10_d, sec_10_q;
reg [3:0] min_1_d, min_1_q;
reg [2:0] min_10_d, min_10_q;
reg [3:0] hour_1_d, hour_1_q;
reg hour_10_d, hour_10_q;
reg pm_d, pm_q;
reg cs_d, cs_q;

reg [9:0] ctr_d, ctr_q;
reg need_config_d, need_config_q;
reg new_time_d, new_time_q;

wire [7:0] data_out;
wire busy, new_data;

assign sec_1 = sec_1_q;
assign sec_10 = sec_10_q;
assign min_1 = min_1_q;
assign min_10 = min_10_q;
assign hour_1 = hour_1_q;
assign hour_10 = hour_10_q;
assign pm = pm_q;
assign rtc_cs = cs_q;
assign need_config = need_config_q;
assign new_time = new_time_q;

spi #(.CLK_DIV(5)) rtc_spi (
	.clk(clk),
	.rst(rst),
	.mosi(rtc_mosi),
	.miso(rtc_miso),
	.sck(rtc_sclk),
	.start(start),
	.data_in(data_in),
	.data_out(data_out),
	.busy(busy),
	.new_data(new_data)
);

always @(*) begin
	new_time_d = 1'b0;
	start = 1'b0;
	state_d = state_q;
	data_in = 8'h00;
	cs_d = 1'b1;
	sec_1_d = sec_1_q;
	sec_10_d = sec_10_q;
	min_1_d = min_1_q;
	min_10_d = min_10_q;
	hour_1_d = hour_1_q;
	hour_10_d = hour_10_q;
	pm_d = pm_q;
	need_config_d = need_config_q;

	ctr_d = 1'b0;

	case (state_q)
		IDLE: begin
			ctr_d = ctr_q + 1'b1;
			if (!busy && ctr_q == 10'h3ff) begin
				cs_d = 1'b0;
				start = 1'b1;
				data_in = 8'h00; // seconds
				state_d = WAIT_ADDR;
			end
		end
		GET_CONFIG_ADDR: begin
			ctr_d = ctr_q + 1'b1;
			if (!busy && ctr_q == 10'h3ff) begin
				cs_d = 1'b0;
				start = 1'b1;
				data_in = 8'h0F; // Control/Status
				state_d = GET_CONFIG_WAIT;
			end
		end
		GET_CONFIG_WAIT: begin
			cs_d = 1'b0;
			if (!busy) begin
				start = 1'b1;
				data_in = 8'h00; // Control/Status
				state_d = GET_CONFIG;
			end
		end
		GET_CONFIG: begin
			cs_d = 1'b0;
			if (new_data) begin
				need_config_d = data_out[7];
				state_d = IDLE;
			end
		end
		WRITE_CONFIG_WAIT: begin
			ctr_d = ctr_q + 1'b1;
			if (!busy && ctr_q == 10'h3ff) begin
				cs_d = 1'b0;
				start = 1'b1;
				data_in = 8'h8F; // Write Control/Status
				state_d = WRITE_CONFIG_ADDR;
			end
		end
		WRITE_CONFIG_ADDR: begin
			cs_d = 1'b0;
			if (!busy) begin
				start = 1'b1;
				data_in = 8'b00001000;
				state_d = WAIT_FINISH;
			end
		end
		WAIT_FINISH: begin
			cs_d = 1'b0;
			if (!busy) begin
				state_d = IDLE;
			end
		end
		WAIT_ADDR: begin
			cs_d = 1'b0;
			if (!busy) begin
				start = 1'b1;
				data_in = 8'h00; // seconds
				state_d = READ_SEC;
			end
		end
		READ_SEC: begin
			cs_d = 1'b0;
			if (new_data) begin
				start = 1'b1;
				data_in = 8'h00;
				state_d = READ_MIN;
				sec_1_d = data_out[3:0];
				sec_10_d = data_out[6:4];
			end
		end
		READ_MIN: begin
			cs_d = 1'b0;
			if (new_data) begin
				start = 1'b1;
				data_in = 8'h00;
				state_d = READ_HOUR;
				min_1_d = data_out[3:0];
				min_10_d = data_out[6:4];
			end
		end
		READ_HOUR: begin
			cs_d = 1'b0;
			if (new_data) begin
				state_d = IDLE;
				new_time_d = 1'b1;
				hour_1_d = data_out[3:0];
				hour_10_d = data_out[4];
				pm_d = data_out[5];
			end
		end
		SET_TIME: begin
			ctr_d = ctr_q + 1'b1;
			if (!busy && ctr_q == 10'h3ff) begin
				cs_d = 1'b0;
				start = 1'b1;
				data_in = 8'h80; // seconds
				state_d = SET_SEC;
			end
		end
		SET_SEC: begin
			cs_d = 1'b0;
			if (!busy) begin
				start = 1'b1;
				data_in = {1'b0, sec_10_q, sec_1_q};
				state_d = SET_MIN;
			end
		end
		SET_MIN: begin
			cs_d = 1'b0;
			if (!busy) begin
				start = 1'b1;
				data_in = {1'b0, min_10_q, min_1_q};
				state_d = SET_HOUR;
			end
		end
		SET_HOUR: begin
			cs_d = 1'b0;
			if (!busy) begin
				start = 1'b1;
				data_in = {2'b01, pm_q, hour_10_q, hour_1_q};
				state_d = SET_WAIT;
			end
		end
		SET_WAIT: begin
			cs_d = 1'b0;
			if (!busy) begin
				state_d = WRITE_CONFIG_WAIT;
			end
		end
		default: state_d = IDLE;
	endcase

	if (set_time) begin
		need_config_d = 1'b0;
		state_d = SET_TIME;
		sec_1_d = 4'd0;
		sec_10_d = 3'd0;
		min_1_d = set_min_1;
		min_10_d = set_min_10;
		hour_1_d = set_hour_1;
		hour_10_d = set_hour_10;
		pm_d = set_pm;
	end

end

always @(posedge clk) begin
	if (rst) begin
		state_q <= GET_CONFIG_ADDR;
		sec_1_q <= 4'b0;
		sec_10_q <= 3'b0;
		min_1_q <= 4'b0;
		min_10_q <= 3'b0;
		hour_1_q <= 4'b0;
		hour_10_q <= 1'b0;
		pm_q <= 1'b0;
		need_config_q <= 1'b0;
		cs_q <= 1'b1;
	end else begin
		state_q <= state_d;
		sec_1_q <= sec_1_d;
		sec_10_q <= sec_10_d;
		min_1_q <= min_1_d;
		min_10_q <= min_10_d;
		hour_1_q <= hour_1_d;
		hour_10_q <= hour_10_d;
		pm_q <= pm_d;
		need_config_q <= need_config_d;
		cs_q <= cs_d;
	end

	new_time_q <= new_time_d;
	ctr_q <= ctr_d;
end

endmodule