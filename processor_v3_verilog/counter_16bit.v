// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module counter_16bit (
	reset, instr, clock, q, sw, HEX0, HEX1, HEX2, HEX3);

	input   [7:0] instr;
	input	  reset, clock;
	output reg	[15:0]  q;
	input sw; 
	output [6:0] HEX0, HEX1, HEX2, HEX3;
	wire [3:0] s1, s2, s3, s4; 
	HEX hex0 (s1, HEX0);
	HEX hex1 (s2, HEX1);
	HEX hex2 (s3, HEX2);
	HEX hex3 (s4, HEX3);
	reg stop;
	
	always @(posedge clock, posedge reset)
	begin
		if (reset)
		begin
			q <= 16'b0;
			stop = 1'b0;
		end
		else if( instr[7:0] == 8'b00000001) // to check first occurence of stop
		begin
		if (stop == 1'b0)
		begin
		stop = 1'b1;
		q <= q + 1'b1;
		end
		else q <= q; 
		end
		else q <= q + 1'b1;
	end
	
//	always @(*)
//	begin
//	if (sw == 1'b1) 
//	begin
//	s1 = 4'b0000; 
//	s2 = 4'b0000; 
//	s3 = 4'b0000; 
//	s4 = 4'b0000; 
//	end
//	else
//	begin
//	s1 = q[3:0];
//	s2 = q[7:4];
//	s3 = q[11:8];
//	s4 = q[15:12];
//	end
//	end
	

endmodule

