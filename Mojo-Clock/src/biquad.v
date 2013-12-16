module biquad (
	input clk,
	input rst,
	input data_in,
	input new_in,
	output [7:0] data_out,
	output new_out
);