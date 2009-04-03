`timescale 1ns / 1ps

module main(
	clk, 
	sclk, csn, miso, mosi,
	oen, wen, cen, 
	addr, 
	data
);

	/*******************************************************************
	 * define inputs and outputs */
	input clk;

	input sclk;
	input csn;
	output miso; 
	input mosi;

	output oen;
	output wen;
	output cen;

	output [16:0] addr;

	inout [7:0] data;


	always @ (posedge clk) begin


	end

	assign addr = 0;
	assign data = 0;
	assign oen = 0;
	assign wen = 0;
	assign cen = 0;
	assign miso = 0;

endmodule
