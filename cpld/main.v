`timescale 1ns / 1ps

module main(
	clk, 
	sclk, csn, miso, mosi
	//oen, wen, cen, 
	//addr, 
	//data
);

	/*******************************************************************
	 * define inputs and outputs */
	input clk;

	input sclk;
	input csn;
	output miso; 
	input mosi;

	//output oen;
	//output wen;
	//output cen;

	//output [16:0] addr;

	//inout [7:0] data;

	/*******************************************************************
	* SPI handling block  */

	// shift register for spi bits
	reg [27:0] spi_in_buffer;

	// when cs is low, read the bits from mosi line
	always @ (sclk) begin

		// on rising edge of sclk, read off mosi
		if (!csn && sclk) begin
			spi_in_buffer <= { spi_in_buffer[26:0] , mosi };
		end

	end

	

	// SPI lines go line during csn high
	assign miso = csn ? 1'bZ : miso_int;

endmodule



