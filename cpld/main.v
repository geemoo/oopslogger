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
	reg [27:0] spi_buffer;

	always @ (posedge sclk) begin




	end

	// SPI lines go line during csn high
	assign miso = csn ? 1'bZ : miso_int;

endmodule



