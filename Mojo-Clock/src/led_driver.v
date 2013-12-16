module led_driver (
	input clk,
	input rst,
	output [2:0] row,
	input [383:0] values,
	output vsync,
	output [7:0]d1_c,
	output [7:0]d1_r,
	output [7:0]d1_g,
	output [7:0]d1_b,
	output [7:0]d2_c,
	output [7:0]d2_r,
	output [7:0]d2_g,
	output [7:0]d2_b
	);

localparam CTR_SIZE = 18;

wire [7:0] red [15:0];
wire [7:0] green [15:0];
wire [7:0] blue [15:0];

reg [15:0] led_r_d, led_r_q;
reg [15:0] led_g_d, led_g_q;
reg [15:0] led_b_d, led_b_q;
reg [7:0] column_d, column_q;

reg [CTR_SIZE-1:0] ctr_d, ctr_q;

assign d1_c = ~column_q;
assign d2_c = ~column_q;
assign d1_r = ~led_r_q[7:0];
assign d2_r = ~led_r_q[15:8];
assign d1_g = ~led_g_q[7:0];
assign d2_g = ~led_g_q[15:8];
assign d1_b = ~led_b_q[7:0];
assign d2_b = ~led_b_q[15:8];
assign vsync = ctr_q == {CTR_SIZE{1'b1}};

assign row = ctr_d[CTR_SIZE-1:CTR_SIZE-3];

integer i;

genvar j;
generate 
	for (j = 0; j < 16; j=j+1) begin: rename_gen
		assign red[j]   = values[23+j*24:16+j*24];
		assign green[j] = values[15+j*24:8+j*24];
		assign blue[j]  = values[7+j*24:0+j*24];
	end
endgenerate

always @(*) begin
	ctr_d = ctr_q + 1'b1;

	column_d = 1'b1 << ~ctr_q[CTR_SIZE-1:CTR_SIZE-3];

	for (i = 0; i < 16; i = i + 1) begin
		if (red[i] > ctr_q[7:0])
			led_r_d[i] = 1'b1;
		else
			led_r_d[i] = 1'b0;

		if (green[i] > ctr_q[7:0])
			led_g_d[i] = 1'b1;
		else
			led_g_d[i] = 1'b0;

		if (blue[i] > ctr_q[7:0])
			led_b_d[i] = 1'b1;
		else
			led_b_d[i] = 1'b0;
	end

end


always @(posedge clk) begin
	if (rst) begin
		ctr_q <= 1'b0;
		led_r_q <= 16'b0;
		led_g_q <= 16'b0;
		led_b_q <= 16'b0;
		column_q <= 8'b0;
	end else begin
		ctr_q <= ctr_d;
		led_r_q <= led_r_d;
		led_g_q <= led_g_d;
		led_b_q <= led_b_d;
		column_q <= column_d;
	end

	
end

endmodule