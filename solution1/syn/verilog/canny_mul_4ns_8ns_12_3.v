// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ==============================================================


`timescale 1 ns / 1 ps

(* use_dsp48 = "yes" *) module canny_mul_4ns_8ns_12_3_MulnS_3(clk, ce, a, b, p);
input clk;
input ce;
input[4 - 1 : 0] a; // synthesis attribute keep a "true"
input[8 - 1 : 0] b; // synthesis attribute keep b "true"
output[12 - 1 : 0] p;

reg [4 - 1 : 0] a_reg0;
reg [8 - 1 : 0] b_reg0;
wire [12 - 1 : 0] tmp_product;
reg [12 - 1 : 0] buff0;

assign p = buff0;
assign tmp_product = a_reg0 * b_reg0;
always @ (posedge clk) begin
    if (ce) begin
        a_reg0 <= a;
        b_reg0 <= b;
        buff0 <= tmp_product;
    end
end
endmodule

`timescale 1 ns / 1 ps
module canny_mul_4ns_8ns_12_3(
    clk,
    reset,
    ce,
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



canny_mul_4ns_8ns_12_3_MulnS_3 canny_mul_4ns_8ns_12_3_MulnS_3_U(
    .clk( clk ),
    .ce( ce ),
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

