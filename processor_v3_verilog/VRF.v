// ---------------------------------------------------------------------
// Copyright (c) 2007 by University of Toronto ECE 243 development team 
// ---------------------------------------------------------------------
//
// Major Functions:	Registers memory stores four 8-bits data
//					 
// Input(s):		1. reset: 	clear registers value to zero
//					2. clock: 	data written at positive clock edge
//					3. vreg1:	indicate which register will be 
//					   			output through (output)data1
//					4. veg2:	indicate which register will be 
//								output through (output)data2
//					5. vregw:	indicate which register will be 
//								overwritten with the data from
//								(input)dataw
//					6. vdataw:	input data to be written into register
//					7. VRFWrite:	write enable single, allow the data to
//								be written at the positive edge
//
// Output(s):		1. vdata1:	data output of the register (input)reg1
//					2. vdata2:	data output of the register (input)reg2
//					3. r0-r3:	data stored by register0 to register3
//
// ---------------------------------------------------------------------

module VRF
(
clock, vreg1, vreg2, vregw,
vdataw, VRFWrite, vdata1, vdata2,
vr0, vr1, vr2, vr3, reset
);

// ------------------------ PORT declaration ------------------------ //
input clock;
input [1:0] vreg1, vreg2, vregw;
input [31:0] vdataw;
input VRFWrite;
input reset;
output [31:0] vdata1, vdata2;
output [31:0] vr0, vr1, vr2, vr3;

// ------------------------- Registers/Wires ------------------------ //
reg [31:0] V0, V1, V2, V3;
reg [31:0] data1_tmp, data2_tmp;

// Asynchronously read data from two registers
always @(*)
begin
	case (vreg1)
		0: data1_tmp = V0;
		1: data1_tmp = V1;
		2: data1_tmp = V2;
		3: data1_tmp = V3;
	endcase
	case (vreg2)
		0: data2_tmp = V0;
		1: data2_tmp = V1;
		2: data2_tmp = V2;
		3: data2_tmp = V3;
	endcase
end

// Synchronously write data to the register file;
// also supports an asynchronous reset, which clears all registers
always @(posedge clock or posedge reset)
begin
	if (reset) begin
		V0 = 0;
		V1 = 0;
		V2 = 0;
		V3 = 0;
	end	else begin
		if (VRFWrite) begin
			case (vregw)
				0: V0 = vdataw;
				1: V1 = vdataw;
				2: V2 = vdataw;
				3: V3 = vdataw;
			endcase
		end
	end
end

// Assign temporary values to the outputs
assign vdata1 = data1_tmp;
assign vdata2 = data2_tmp;

assign vr0 = V0;
assign vr1 = V1;
assign vr2 = V2;
assign vr3 = V3;

endmodule
