module number_rom (
	input clk,
	input [3:0] number,
	input [1:0] x,
	input [3:0] y,
	output reg active
	);

reg [3:0] digits [9:0][7:0]; 

initial begin
	digits[0][0] = 4'b1111;
	digits[0][1] = 4'b1001;
	digits[0][2] = 4'b1001;
	digits[0][3] = 4'b1001;
	digits[0][4] = 4'b1001;
	digits[0][5] = 4'b1001;
	digits[0][6] = 4'b1111;
	digits[0][7] = 4'b0000;

	digits[1][0] = 4'b0001;
	digits[1][1] = 4'b0001;
	digits[1][2] = 4'b0001;
	digits[1][3] = 4'b0001;
	digits[1][4] = 4'b0001;
	digits[1][5] = 4'b0001;
	digits[1][6] = 4'b0001;
	digits[1][7] = 4'b0000;

	digits[2][0] = 4'b1111;
	digits[2][1] = 4'b0001;
	digits[2][2] = 4'b0001;
	digits[2][3] = 4'b1111;
	digits[2][4] = 4'b1000;
	digits[2][5] = 4'b1000;
	digits[2][6] = 4'b1111;
	digits[2][7] = 4'b0000;

	digits[3][0] = 4'b1111;
	digits[3][1] = 4'b0001;
	digits[3][2] = 4'b0001;
	digits[3][3] = 4'b1111;
	digits[3][4] = 4'b0001;
	digits[3][5] = 4'b0001;
	digits[3][6] = 4'b1111;
	digits[3][7] = 4'b0000;

	digits[4][0] = 4'b1001;
	digits[4][1] = 4'b1001;
	digits[4][2] = 4'b1001;
	digits[4][3] = 4'b1111;
	digits[4][4] = 4'b0001;
	digits[4][5] = 4'b0001;
	digits[4][6] = 4'b0001;
	digits[4][7] = 4'b0000;

	digits[5][0] = 4'b1111;
	digits[5][1] = 4'b1000;
	digits[5][2] = 4'b1000;
	digits[5][3] = 4'b1111;
	digits[5][4] = 4'b0001;
	digits[5][5] = 4'b0001;
	digits[5][6] = 4'b1111;
	digits[5][7] = 4'b0000;

	digits[6][0] = 4'b1111;
	digits[6][1] = 4'b1000;
	digits[6][2] = 4'b1000;
	digits[6][3] = 4'b1111;
	digits[6][4] = 4'b1001;
	digits[6][5] = 4'b1001;
	digits[6][6] = 4'b1111;
	digits[6][7] = 4'b0000;

	digits[7][0] = 4'b1111;
	digits[7][1] = 4'b0001;
	digits[7][2] = 4'b0001;
	digits[7][3] = 4'b0001;
	digits[7][4] = 4'b0001;
	digits[7][5] = 4'b0001;
	digits[7][6] = 4'b0001;
	digits[7][7] = 4'b0000;

	digits[8][0] = 4'b1111;
	digits[8][1] = 4'b1001;
	digits[8][2] = 4'b1001;
	digits[8][3] = 4'b1111;
	digits[8][4] = 4'b1001;
	digits[8][5] = 4'b1001;
	digits[8][6] = 4'b1111;
	digits[8][7] = 4'b0000;

	digits[9][0] = 4'b1111;
	digits[9][1] = 4'b1001;
	digits[9][2] = 4'b1001;
	digits[9][3] = 4'b1111;
	digits[9][4] = 4'b0001;
	digits[9][5] = 4'b0001;
	digits[9][6] = 4'b0001;
	digits[9][7] = 4'b0000;
end


always @(*) begin
	if (number <= 9)
		active = digits[number][y][~x];
	else
		active = 1'b0;
end


endmodule