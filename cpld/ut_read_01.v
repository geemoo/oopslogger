`timescale 1ns / 1ps

module ut_read_01;

	// Inputs
	reg clk;
	reg sclk;
	reg csn;
	reg mosi;
	reg [23:0] spi_sample;
	reg [5:0] spi_count;
	
	// Outputs
	wire miso;

	reg [3:0] cur_state;

	wire [16:0] addr; // 17bit address bus
	wire [7:0] data;

	parameter CMD_READ = 2'b10;
	parameter CMD_WRITE = 2'b11;
	parameter BIT_PAD = 5'b00000;
	parameter TEST_ADDRESS = 17'h139c6;

	// Instantiate the Unit Under Test (UUT)
	main uut1 (
		.clk(clk), 
		.sclk(sclk), 
		.csn(csn), 
		.miso(miso), 
		.mosi(mosi),
		.oen(oen),
		.wen(wen),
		.cen(cen),
		.addr(addr),
		.data(data)
	);

	initial begin
		// initialize everything
		clk <= 0;
		sclk <= 0;
		csn <= 1;
		mosi <= 0;
		spi_sample <= { CMD_READ, BIT_PAD, TEST_ADDRESS };
		spi_count <= 0;
		cur_state <= RESET;

		// make an clk for all the chip to run on
		// this may not even be needed.. if not, we'll use it as a reset later
		begin 
			forever #1 clk <= ~clk; 
		end

		// Wait 100 ns for global reset to finish
		#100;

	end

	parameter RESET = 4'd0;
	parameter CS_LOW = 4'd1;
	parameter CS_WAIT = 4'd2;
	parameter SETUPDATA = 4'd3;
	parameter RAISESCLK = 4'd4;
	parameter READDATA = 4'd5;
	parameter READSCLK = 4'd6;
	parameter RELEASEMISO = 4'd7;
	parameter HOLDCS = 4'd8;
	parameter DONE = 4'd9;

	// simulate clocking in the data from spi_sample
	always @ (posedge clk) begin
		
		case (cur_state)

			RESET: begin
				cur_state <= CS_LOW;
				csn <= 1;
			end

			CS_LOW: begin
				cur_state <= CS_WAIT;
				csn <= 0;
			end

			CS_WAIT: begin
				#10
				spi_count <= 24;
				cur_state <= SETUPDATA;
			end

			SETUPDATA: begin
				#5
				sclk <= 0;
				if (spi_count) begin
					mosi <= spi_sample[23];				
					spi_sample <= spi_sample << 1;
					spi_count <= spi_count - 1;
					cur_state <= RAISESCLK;
				end else begin
					cur_state <= READSCLK;
					spi_count <= 8;
				end
			end
	
			RAISESCLK: begin
				#5
				sclk <= 1;
				cur_state <= SETUPDATA;
			end

			READDATA: begin
				#5;
				sclk <= 0;
				if (spi_count) begin
					spi_sample <= { spi_sample[22:0], miso };
					spi_count <= spi_count - 1;
					cur_state <= READSCLK;
				end else begin
					cur_state <= RELEASEMISO;
				end
			end

			READSCLK: begin
				#5
				sclk <= 1;
				cur_state <= READDATA;
			end

			RELEASEMISO: begin
				mosi <= 0;
				cur_state <= HOLDCS;
			end

			HOLDCS: begin
				#20
				cur_state <= DONE;
			end

			DONE: begin
				cur_state <= DONE;
				csn <= 1;
			end
		endcase

	end

assign data = oen ? 8'bZ : 8'h96;

endmodule


