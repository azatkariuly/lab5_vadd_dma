############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project lab5_vadd_dma_azaz
set_top krnl_vadd
add_files lab5_vadd_dma_azaz/vadd_dma.cpp
add_files lab5_vadd_dma_azaz/vadd_dma.h
add_files -tb lab5_vadd_dma_azaz/tb_vadd_dma.cpp
open_solution "solution1"
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./lab5_vadd_dma_azaz/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
