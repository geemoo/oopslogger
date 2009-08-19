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
	inout miso; 
	input mosi;

	output oen;
	output wen;
	output cen;

	output [16:0] addr;
	inout [7:0] data;

	// define registers for what needs to be a register
	reg sclk_last;

	reg [16:0] addr;
	wire [7:0] data;
	wire [7:0] data_in;
	reg [7:0] data_out;
	reg data_out_en;
	reg ce;
	reg oe;
	reg we;

	reg miso_int;
	reg miso_active;
	reg [5:0] delay;
	reg cmd;

	// params to make the commands easier to read
	parameter CMD_READ = 1'b0;
	parameter CMD_WRITE = 1'b1;

	// a state var
	reg [2:0] cur_state;
	parameter GET_CMD = 3'b000;
	parameter GET_ADDR = 3'b001;
	parameter PREP_WRITE = 3'b010;
	parameter DO_WRITE = 3'b011;
	parameter WRITE_HOLD = 3'b100;
	parameter DO_READ = 3'b101;
	parameter READ_HOLD = 3'b110;

	// variables to manage the shift register
	reg [16:0] spi_in_buffer;
	reg [7:0] spi_out_buffer;
	reg [5:0] spi_count;
	
	/*******************************************************************************
	 * react to the clocking of the sclk to get our data */
	always @ (posedge sclk or negedge sclk) begin

		// if csn is high, then we reset stuff
		if (csn) begin
			spi_count <= 0;
			miso_int <= 0;
			miso_active <= 0;

		// on the rising edge.. 
		end else if (sclk) begin 
			// shift in our data from the mcu
			spi_in_buffer <= { spi_in_buffer[16:0] , mosi };

			// inc our counter so the other blocks know when to operate
			spi_count <= spi_count + 1;

		// on the falling edge..
		end else begin
			if (miso_active) begin
				miso_int <= spi_out_buffer[7];
				spi_out_buffer <= spi_out_buffer << 1;
			end
		end
	end


	/*******************************************************************************
	 * This always block is responsible for interfacing to the ram */
	always @ (posedge(clk)) begin

		if (csn) begin
			ce <= 0;
			we <= 0;
			oe <= 0;
			data_out <= 0;
			data_out_en <= 0;
			cur_state <= GET_CMD;
			addr <= 0;
	
		end else begin
		
			// if stuff is being clocked in, we're gonna need the ram soon.. power it up
			ce <= 1;

			// state machine to handle doing the reads and writes
			case (cur_state)
				// in this state, we wait until we're told to continue
				GET_CMD: begin
					// once we get 1 bit in.. we can get the command
					if (spi_count == 1) begin
						// figure out if we are supposed to read or write
						cmd <= spi_in_buffer[0];

						// next state is to get the address
						cur_state <= GET_ADDR;
					end
				end
	
				// now we need to get the address
				GET_ADDR: begin
					// once we get 1 bit in.. we can get the command
					if (spi_count == 24) begin
						// copy the address
						addr <= spi_in_buffer[16:0];

						// go to the next state
						if (cmd) begin
							cur_state <= PREP_WRITE;
						end else begin
							cur_state <= DO_READ;
						end
					end
				end
			
				// we need to read in 8 bits of data before we can write to the ram
				PREP_WRITE: begin
					// once we get to 32 bits...
					if (spi_count == 32) begin
						data_out <= spi_in_buffer[7:0];
						data_out_en <= 1;
						cur_state <= DO_WRITE;
					end
				end

				// now we have to put we high
				DO_WRITE: begin
					we <= 1;
					delay <= 5;
					cur_state <= WRITE_HOLD;
				end
		
				// wait for the ram to output it's data
				WRITE_HOLD: begin
					if (delay) begin
						delay <= delay - 1;
					end else begin
						we <= 0;
						data_out <= 0;
						data_out_en <= 0;
						cur_state <= GET_CMD;
					end
				end

				// do the output enable for the ram
				DO_READ: begin
					oe <= 1;
					delay <= 5;
					cur_state <= READ_HOLD;
				end

				// wait for the data to come out
				READ_HOLD: begin
					if (delay) begin
						delay <= delay - 1;
					end else begin
						spi_out_buffer <= data_in;
						cur_state <= GET_CMD;
					end
				end

				default: begin
				end

			endcase
		end
	end

	// SPI lines go line during csn high
	assign miso = csn ? 1'bZ : miso_int;

	// since data is an inout port, we'll assign it via the status of oe
	assign data = data_out_en ? data_out : 8'bZ;
	assign data_in = oe ? data : 8'bZ;

	// assign inverts to the enable lines
	assign cen = ~ce;
	assign oen = ~oe;
	assign wen = ~we;
endmodule
