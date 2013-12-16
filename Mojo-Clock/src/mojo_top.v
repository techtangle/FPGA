module mojo_top(
    input clk,
    input rst_n,
    input cclk,
    output[7:0] led,
    output spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output [3:0] spi_channel,
    input avr_tx,
    output avr_rx,
    input avr_rx_busy,
	output speaker,
	input mic_data,
	output mic_clk,
	output rtc_sclk,
	output rtc_cs,
	output rtc_mosi,
	input rtc_miso,
	input rtc_32khz,
	input rtc_int,
	input up_button,
	input down_button,
	input select_button,
	output [7:0]d1_c,
	output [7:0]d1_r,
	output [7:0]d1_g,
	output [7:0]d1_b,
	output [7:0]d2_c,
	output [7:0]d2_r,
	output [7:0]d2_g,
	output [7:0]d2_b
    );

assign spi_miso = 1'bz;
assign avr_rx = 1'bz;
assign spi_channel = 4'bzzzz;

assign speaker = 1'b0;

wire rst = ~rst_n;

wire new_sample;
wire [9:0] sample;
wire [3:0] sample_channel;
wire [3:0] adc_channel;

wire [3:0] x;
wire [2:0] y;
wire [7:0] red;
wire [7:0] green;
wire [7:0] blue;
wire valid;

wire [15:0] aud_sample;
wire aud_new;

wire up_pulse, down_pulse, select_pulse, select_long;

avr_interface avr_interface (
    .clk(clk),
    .rst(rst),
    .cclk(cclk),
    .spi_miso(spi_miso),
    .spi_mosi(spi_mosi),
    .spi_sck(spi_sck),
    .spi_ss(spi_ss),
    .spi_channel(spi_channel),
    .tx(avr_rx),
    .rx(avr_tx),
    .channel(adc_channel),
    .new_sample(new_sample),
    .sample(sample),
    .sample_channel(sample_channel),
    .tx_data(8'h00),
    .new_tx_data(1'b0),
    .tx_busy(),
    .tx_block(avr_rx_busy),
    .rx_data(),
    .new_rx_data()
);

pdm_mic pdm_mic (
	.clk(clk),
	.rst(rst),
	.mic_clk(mic_clk),
	.mic_data(mic_data),
	.sample(aud_sample),
	.new_sample(aud_new)
);

button_conditioner up_conditioner (
	.clk(clk),
	.btn(up_button),
	.out(up_pulse),
	.long()
); 

button_conditioner down_conditioner (
	.clk(clk),
	.btn(down_button),
	.out(down_pulse),
	.long()
); 

button_conditioner select_conditioner (
	.clk(clk),
	.btn(select_button),
	.out(select_pulse),
	.long(select_long)
); 

mstr_ctrl mstr_ctrl (
	.clk(clk),
	.rst(rst),
	.up(up_pulse),
	.down(down_pulse),
	.select(select_pulse),
	.select_long(select_long),
	.adc_channel(adc_channel),
	.sample(sample),
	.sample_channel(sample_channel),
	.new_sample(new_sample),
	.aud_sample(aud_sample),
	.aud_new(aud_new),
	.rtc_sclk(rtc_sclk),
	.rtc_cs(rtc_cs),
	.rtc_mosi(rtc_mosi),
	.rtc_miso(rtc_miso),
	.rtc_32khz(rtc_32khz),
	.rtc_int(rtc_int),
	.d1_c(d1_c),
	.d1_r(d1_r),
	.d1_g(d1_g),
	.d1_b(d1_b),
	.d2_c(d2_c),
	.d2_r(d2_r),
	.d2_g(d2_g),
	.d2_b(d2_b),
	.led(led)
);
	 

endmodule