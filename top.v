module TOP_SPI(

	input MOSI,
	output MISO,
	input SS_n,
	input clk , rst 

	);

// internal signals 
wire [9:0] rx_data;
wire       rx_valid;
wire [7:0] tx_data;
wire       tx_valid;

//SPI

SPI_SLAVE U(
	.MOSI(MOSI),
	.SS_n(SS_n),
	.clk(clk),
	.rst(rst),
	.tx_data(tx_data),
	.tx_valid(tx_valid),
	.MISO(MISO),
	.rx_data(rx_data),
	.rx_valid(rx_valid)
	);

RAM M(
	.clk(clk),
	.rst(rst),
	.rx_valid(rx_valid),
	.din(rx_data),
	.dout(tx_data),
	.tx_valid(tx_valid)

	);


endmodule 