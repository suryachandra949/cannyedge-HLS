############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project cannyedge
set_top canny
add_files cannyedge/cannyedge.cc
add_files cannyedge/cannyedge.h
add_files zebra.jpg
add_files -tb cannyedge/cannytest.cc
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 5 -name default
#source "./cannyedge/solution1/directives.tcl"
csim_design -setup
csynth_design
cosim_design
export_design -format ip_catalog
