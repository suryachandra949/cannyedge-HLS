// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _canny_HH_
#define _canny_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "canny_Block_proc.h"
#include "canny_AXIvideo2Mat_8_1024_1024_0_s.h"
#include "canny_GaussianBlur.h"
#include "canny_Duplicate_1024_1024_0_0_s.h"
#include "canny_Sobel.h"
#include "canny_Sobel_1.h"
#include "canny_grad_computation.h"
#include "canny_nonmax_supression.h"
#include "canny_hysterisis.h"
#include "canny_Mat2AXIvideo_8_1022_1022_0_s.h"
#include "FIFO_canny_img_0_rows_V_channel.h"
#include "FIFO_canny_img_0_cols_V_channel.h"
#include "FIFO_canny_img_0_data_stream_0_V.h"
#include "FIFO_canny_img_0_rows_V_channel19.h"
#include "FIFO_canny_img_0_cols_V_channel20.h"
#include "FIFO_canny_img_1_data_stream_0_V.h"
#include "FIFO_canny_img_2_data_stream_0_V.h"
#include "FIFO_canny_img_3_data_stream_0_V.h"
#include "FIFO_canny_grad_x_data_stream_0_V.h"
#include "FIFO_canny_grad_y_data_stream_0_V.h"
#include "FIFO_canny_grad_out_data_stream_0_V.h"
#include "FIFO_canny_supressed_Image_data_stream_0.h"
#include "FIFO_canny_hysterisis_Image_data_stream_0.h"

namespace ap_rtl {

struct canny : public sc_module {
    // Port declarations 24
    sc_in< sc_lv<8> > input_stream_TDATA;
    sc_in< sc_lv<1> > input_stream_TKEEP;
    sc_in< sc_lv<1> > input_stream_TSTRB;
    sc_in< sc_lv<1> > input_stream_TUSER;
    sc_in< sc_lv<1> > input_stream_TLAST;
    sc_in< sc_lv<1> > input_stream_TID;
    sc_in< sc_lv<1> > input_stream_TDEST;
    sc_out< sc_lv<8> > output_stream_TDATA;
    sc_out< sc_lv<1> > output_stream_TKEEP;
    sc_out< sc_lv<1> > output_stream_TSTRB;
    sc_out< sc_lv<1> > output_stream_TUSER;
    sc_out< sc_lv<1> > output_stream_TLAST;
    sc_out< sc_lv<1> > output_stream_TID;
    sc_out< sc_lv<1> > output_stream_TDEST;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > input_stream_TVALID;
    sc_out< sc_logic > input_stream_TREADY;
    sc_out< sc_logic > output_stream_TVALID;
    sc_in< sc_logic > output_stream_TREADY;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;


    // Module declarations
    canny(sc_module_name name);
    SC_HAS_PROCESS(canny);

    ~canny();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    canny_Block_proc* canny_Block_proc_U0;
    canny_AXIvideo2Mat_8_1024_1024_0_s* canny_AXIvideo2Mat_8_1024_1024_0_U0;
    canny_GaussianBlur* canny_GaussianBlur_U0;
    canny_Duplicate_1024_1024_0_0_s* canny_Duplicate_1024_1024_0_0_U0;
    canny_Sobel* canny_Sobel_U0;
    canny_Sobel_1* canny_Sobel_1_U0;
    canny_grad_computation* canny_grad_computation_U0;
    canny_nonmax_supression* canny_nonmax_supression_U0;
    canny_hysterisis* canny_hysterisis_U0;
    canny_Mat2AXIvideo_8_1022_1022_0_s* canny_Mat2AXIvideo_8_1022_1022_0_U0;
    FIFO_canny_img_0_rows_V_channel* img_0_rows_V_channel_U;
    FIFO_canny_img_0_cols_V_channel* img_0_cols_V_channel_U;
    FIFO_canny_img_0_data_stream_0_V* img_0_data_stream_0_V_U;
    FIFO_canny_img_0_rows_V_channel19* img_0_rows_V_channel19_U;
    FIFO_canny_img_0_cols_V_channel20* img_0_cols_V_channel20_U;
    FIFO_canny_img_1_data_stream_0_V* img_1_data_stream_0_V_U;
    FIFO_canny_img_2_data_stream_0_V* img_2_data_stream_0_V_U;
    FIFO_canny_img_3_data_stream_0_V* img_3_data_stream_0_V_U;
    FIFO_canny_grad_x_data_stream_0_V* grad_x_data_stream_0_V_U;
    FIFO_canny_grad_y_data_stream_0_V* grad_y_data_stream_0_V_U;
    FIFO_canny_grad_out_data_stream_0_V* grad_out_data_stream_0_V_U;
    FIFO_canny_supressed_Image_data_stream_0* supressed_Image_data_stream_0_U;
    FIFO_canny_hysterisis_Image_data_stream_0* hysterisis_Image_data_stream_0_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > canny_Block_proc_U0_ap_start;
    sc_signal< sc_logic > canny_Block_proc_U0_ap_done;
    sc_signal< sc_logic > canny_Block_proc_U0_ap_continue;
    sc_signal< sc_logic > canny_Block_proc_U0_ap_idle;
    sc_signal< sc_logic > canny_Block_proc_U0_ap_ready;
    sc_signal< sc_lv<12> > canny_Block_proc_U0_img_0_rows_V_out_din;
    sc_signal< sc_logic > canny_Block_proc_U0_img_0_rows_V_out_full_n;
    sc_signal< sc_logic > canny_Block_proc_U0_img_0_rows_V_out_write;
    sc_signal< sc_lv<12> > canny_Block_proc_U0_img_0_cols_V_out_din;
    sc_signal< sc_logic > canny_Block_proc_U0_img_0_cols_V_out_full_n;
    sc_signal< sc_logic > canny_Block_proc_U0_img_0_cols_V_out_write;
    sc_signal< sc_logic > canny_AXIvideo2Mat_8_1024_1024_0_U0_ap_start;
    sc_signal< sc_logic > canny_AXIvideo2Mat_8_1024_1024_0_U0_ap_done;
    sc_signal< sc_logic > canny_AXIvideo2Mat_8_1024_1024_0_U0_ap_continue;
    sc_signal< sc_logic > canny_AXIvideo2Mat_8_1024_1024_0_U0_ap_idle;
    sc_signal< sc_logic > canny_AXIvideo2Mat_8_1024_1024_0_U0_ap_ready;
    sc_signal< sc_lv<8> > canny_AXIvideo2Mat_8_1024_1024_0_U0_input_stream_TDATA;
    sc_signal< sc_logic > canny_AXIvideo2Mat_8_1024_1024_0_U0_input_stream_TVALID;
    sc_signal< sc_logic > canny_AXIvideo2Mat_8_1024_1024_0_U0_input_stream_TREADY;
    sc_signal< sc_lv<1> > canny_AXIvideo2Mat_8_1024_1024_0_U0_input_stream_TKEEP;
    sc_signal< sc_lv<1> > canny_AXIvideo2Mat_8_1024_1024_0_U0_input_stream_TSTRB;
    sc_signal< sc_lv<1> > canny_AXIvideo2Mat_8_1024_1024_0_U0_input_stream_TUSER;
    sc_signal< sc_lv<1> > canny_AXIvideo2Mat_8_1024_1024_0_U0_input_stream_TLAST;
    sc_signal< sc_lv<1> > canny_AXIvideo2Mat_8_1024_1024_0_U0_input_stream_TID;
    sc_signal< sc_lv<1> > canny_AXIvideo2Mat_8_1024_1024_0_U0_input_stream_TDEST;
    sc_signal< sc_lv<12> > canny_AXIvideo2Mat_8_1024_1024_0_U0_img_rows_V_dout;
    sc_signal< sc_logic > canny_AXIvideo2Mat_8_1024_1024_0_U0_img_rows_V_empty_n;
    sc_signal< sc_logic > canny_AXIvideo2Mat_8_1024_1024_0_U0_img_rows_V_read;
    sc_signal< sc_lv<12> > canny_AXIvideo2Mat_8_1024_1024_0_U0_img_cols_V_dout;
    sc_signal< sc_logic > canny_AXIvideo2Mat_8_1024_1024_0_U0_img_cols_V_empty_n;
    sc_signal< sc_logic > canny_AXIvideo2Mat_8_1024_1024_0_U0_img_cols_V_read;
    sc_signal< sc_lv<8> > canny_AXIvideo2Mat_8_1024_1024_0_U0_img_data_stream_V_din;
    sc_signal< sc_logic > canny_AXIvideo2Mat_8_1024_1024_0_U0_img_data_stream_V_full_n;
    sc_signal< sc_logic > canny_AXIvideo2Mat_8_1024_1024_0_U0_img_data_stream_V_write;
    sc_signal< sc_lv<12> > canny_AXIvideo2Mat_8_1024_1024_0_U0_img_rows_V_out_din;
    sc_signal< sc_logic > canny_AXIvideo2Mat_8_1024_1024_0_U0_img_rows_V_out_full_n;
    sc_signal< sc_logic > canny_AXIvideo2Mat_8_1024_1024_0_U0_img_rows_V_out_write;
    sc_signal< sc_lv<12> > canny_AXIvideo2Mat_8_1024_1024_0_U0_img_cols_V_out_din;
    sc_signal< sc_logic > canny_AXIvideo2Mat_8_1024_1024_0_U0_img_cols_V_out_full_n;
    sc_signal< sc_logic > canny_AXIvideo2Mat_8_1024_1024_0_U0_img_cols_V_out_write;
    sc_signal< sc_logic > canny_GaussianBlur_U0_ap_start;
    sc_signal< sc_logic > canny_GaussianBlur_U0_ap_done;
    sc_signal< sc_logic > canny_GaussianBlur_U0_ap_continue;
    sc_signal< sc_logic > canny_GaussianBlur_U0_ap_idle;
    sc_signal< sc_logic > canny_GaussianBlur_U0_ap_ready;
    sc_signal< sc_lv<12> > canny_GaussianBlur_U0_p_src_rows_V_dout;
    sc_signal< sc_logic > canny_GaussianBlur_U0_p_src_rows_V_empty_n;
    sc_signal< sc_logic > canny_GaussianBlur_U0_p_src_rows_V_read;
    sc_signal< sc_lv<12> > canny_GaussianBlur_U0_p_src_cols_V_dout;
    sc_signal< sc_logic > canny_GaussianBlur_U0_p_src_cols_V_empty_n;
    sc_signal< sc_logic > canny_GaussianBlur_U0_p_src_cols_V_read;
    sc_signal< sc_lv<8> > canny_GaussianBlur_U0_p_src_data_stream_V_dout;
    sc_signal< sc_logic > canny_GaussianBlur_U0_p_src_data_stream_V_empty_n;
    sc_signal< sc_logic > canny_GaussianBlur_U0_p_src_data_stream_V_read;
    sc_signal< sc_lv<8> > canny_GaussianBlur_U0_p_dst_data_stream_V_din;
    sc_signal< sc_logic > canny_GaussianBlur_U0_p_dst_data_stream_V_full_n;
    sc_signal< sc_logic > canny_GaussianBlur_U0_p_dst_data_stream_V_write;
    sc_signal< sc_logic > canny_Duplicate_1024_1024_0_0_U0_ap_start;
    sc_signal< sc_logic > canny_Duplicate_1024_1024_0_0_U0_ap_done;
    sc_signal< sc_logic > canny_Duplicate_1024_1024_0_0_U0_ap_continue;
    sc_signal< sc_logic > canny_Duplicate_1024_1024_0_0_U0_ap_idle;
    sc_signal< sc_logic > canny_Duplicate_1024_1024_0_0_U0_ap_ready;
    sc_signal< sc_lv<8> > canny_Duplicate_1024_1024_0_0_U0_src_data_stream_V_dout;
    sc_signal< sc_logic > canny_Duplicate_1024_1024_0_0_U0_src_data_stream_V_empty_n;
    sc_signal< sc_logic > canny_Duplicate_1024_1024_0_0_U0_src_data_stream_V_read;
    sc_signal< sc_lv<8> > canny_Duplicate_1024_1024_0_0_U0_dst1_data_stream_V_din;
    sc_signal< sc_logic > canny_Duplicate_1024_1024_0_0_U0_dst1_data_stream_V_full_n;
    sc_signal< sc_logic > canny_Duplicate_1024_1024_0_0_U0_dst1_data_stream_V_write;
    sc_signal< sc_lv<8> > canny_Duplicate_1024_1024_0_0_U0_dst2_data_stream_V_din;
    sc_signal< sc_logic > canny_Duplicate_1024_1024_0_0_U0_dst2_data_stream_V_full_n;
    sc_signal< sc_logic > canny_Duplicate_1024_1024_0_0_U0_dst2_data_stream_V_write;
    sc_signal< sc_logic > canny_Sobel_U0_ap_start;
    sc_signal< sc_logic > canny_Sobel_U0_ap_done;
    sc_signal< sc_logic > canny_Sobel_U0_ap_continue;
    sc_signal< sc_logic > canny_Sobel_U0_ap_idle;
    sc_signal< sc_logic > canny_Sobel_U0_ap_ready;
    sc_signal< sc_lv<8> > canny_Sobel_U0_p_src_data_stream_V_dout;
    sc_signal< sc_logic > canny_Sobel_U0_p_src_data_stream_V_empty_n;
    sc_signal< sc_logic > canny_Sobel_U0_p_src_data_stream_V_read;
    sc_signal< sc_lv<8> > canny_Sobel_U0_p_dst_data_stream_V_din;
    sc_signal< sc_logic > canny_Sobel_U0_p_dst_data_stream_V_full_n;
    sc_signal< sc_logic > canny_Sobel_U0_p_dst_data_stream_V_write;
    sc_signal< sc_logic > canny_Sobel_1_U0_ap_start;
    sc_signal< sc_logic > canny_Sobel_1_U0_ap_done;
    sc_signal< sc_logic > canny_Sobel_1_U0_ap_continue;
    sc_signal< sc_logic > canny_Sobel_1_U0_ap_idle;
    sc_signal< sc_logic > canny_Sobel_1_U0_ap_ready;
    sc_signal< sc_lv<8> > canny_Sobel_1_U0_p_src_data_stream_V_dout;
    sc_signal< sc_logic > canny_Sobel_1_U0_p_src_data_stream_V_empty_n;
    sc_signal< sc_logic > canny_Sobel_1_U0_p_src_data_stream_V_read;
    sc_signal< sc_lv<8> > canny_Sobel_1_U0_p_dst_data_stream_V_din;
    sc_signal< sc_logic > canny_Sobel_1_U0_p_dst_data_stream_V_full_n;
    sc_signal< sc_logic > canny_Sobel_1_U0_p_dst_data_stream_V_write;
    sc_signal< sc_logic > canny_grad_computation_U0_ap_start;
    sc_signal< sc_logic > canny_grad_computation_U0_ap_done;
    sc_signal< sc_logic > canny_grad_computation_U0_ap_continue;
    sc_signal< sc_logic > canny_grad_computation_U0_ap_idle;
    sc_signal< sc_logic > canny_grad_computation_U0_ap_ready;
    sc_signal< sc_lv<8> > canny_grad_computation_U0_grad_x_data_stream_V_dout;
    sc_signal< sc_logic > canny_grad_computation_U0_grad_x_data_stream_V_empty_n;
    sc_signal< sc_logic > canny_grad_computation_U0_grad_x_data_stream_V_read;
    sc_signal< sc_lv<8> > canny_grad_computation_U0_grad_y_data_stream_V_dout;
    sc_signal< sc_logic > canny_grad_computation_U0_grad_y_data_stream_V_empty_n;
    sc_signal< sc_logic > canny_grad_computation_U0_grad_y_data_stream_V_read;
    sc_signal< sc_lv<16> > canny_grad_computation_U0_grad_out_data_stream_V_din;
    sc_signal< sc_logic > canny_grad_computation_U0_grad_out_data_stream_V_full_n;
    sc_signal< sc_logic > canny_grad_computation_U0_grad_out_data_stream_V_write;
    sc_signal< sc_logic > canny_nonmax_supression_U0_ap_start;
    sc_signal< sc_logic > canny_nonmax_supression_U0_ap_done;
    sc_signal< sc_logic > canny_nonmax_supression_U0_ap_continue;
    sc_signal< sc_logic > canny_nonmax_supression_U0_ap_idle;
    sc_signal< sc_logic > canny_nonmax_supression_U0_ap_ready;
    sc_signal< sc_lv<16> > canny_nonmax_supression_U0_grad_out_data_stream_V_dout;
    sc_signal< sc_logic > canny_nonmax_supression_U0_grad_out_data_stream_V_empty_n;
    sc_signal< sc_logic > canny_nonmax_supression_U0_grad_out_data_stream_V_read;
    sc_signal< sc_lv<8> > canny_nonmax_supression_U0_supressed_data_stream_V_din;
    sc_signal< sc_logic > canny_nonmax_supression_U0_supressed_data_stream_V_full_n;
    sc_signal< sc_logic > canny_nonmax_supression_U0_supressed_data_stream_V_write;
    sc_signal< sc_logic > canny_hysterisis_U0_ap_start;
    sc_signal< sc_logic > canny_hysterisis_U0_ap_done;
    sc_signal< sc_logic > canny_hysterisis_U0_ap_continue;
    sc_signal< sc_logic > canny_hysterisis_U0_ap_idle;
    sc_signal< sc_logic > canny_hysterisis_U0_ap_ready;
    sc_signal< sc_lv<8> > canny_hysterisis_U0_supressed_data_stream_V_dout;
    sc_signal< sc_logic > canny_hysterisis_U0_supressed_data_stream_V_empty_n;
    sc_signal< sc_logic > canny_hysterisis_U0_supressed_data_stream_V_read;
    sc_signal< sc_lv<8> > canny_hysterisis_U0_hysterisis_Image_data_stream_V_din;
    sc_signal< sc_logic > canny_hysterisis_U0_hysterisis_Image_data_stream_V_full_n;
    sc_signal< sc_logic > canny_hysterisis_U0_hysterisis_Image_data_stream_V_write;
    sc_signal< sc_logic > canny_Mat2AXIvideo_8_1022_1022_0_U0_ap_start;
    sc_signal< sc_logic > canny_Mat2AXIvideo_8_1022_1022_0_U0_ap_done;
    sc_signal< sc_logic > canny_Mat2AXIvideo_8_1022_1022_0_U0_ap_continue;
    sc_signal< sc_logic > canny_Mat2AXIvideo_8_1022_1022_0_U0_ap_idle;
    sc_signal< sc_logic > canny_Mat2AXIvideo_8_1022_1022_0_U0_ap_ready;
    sc_signal< sc_lv<8> > canny_Mat2AXIvideo_8_1022_1022_0_U0_img_data_stream_V_dout;
    sc_signal< sc_logic > canny_Mat2AXIvideo_8_1022_1022_0_U0_img_data_stream_V_empty_n;
    sc_signal< sc_logic > canny_Mat2AXIvideo_8_1022_1022_0_U0_img_data_stream_V_read;
    sc_signal< sc_lv<8> > canny_Mat2AXIvideo_8_1022_1022_0_U0_output_stream_TDATA;
    sc_signal< sc_logic > canny_Mat2AXIvideo_8_1022_1022_0_U0_output_stream_TVALID;
    sc_signal< sc_logic > canny_Mat2AXIvideo_8_1022_1022_0_U0_output_stream_TREADY;
    sc_signal< sc_lv<1> > canny_Mat2AXIvideo_8_1022_1022_0_U0_output_stream_TKEEP;
    sc_signal< sc_lv<1> > canny_Mat2AXIvideo_8_1022_1022_0_U0_output_stream_TSTRB;
    sc_signal< sc_lv<1> > canny_Mat2AXIvideo_8_1022_1022_0_U0_output_stream_TUSER;
    sc_signal< sc_lv<1> > canny_Mat2AXIvideo_8_1022_1022_0_U0_output_stream_TLAST;
    sc_signal< sc_lv<1> > canny_Mat2AXIvideo_8_1022_1022_0_U0_output_stream_TID;
    sc_signal< sc_lv<1> > canny_Mat2AXIvideo_8_1022_1022_0_U0_output_stream_TDEST;
    sc_signal< sc_logic > ap_sig_hs_continue;
    sc_signal< sc_logic > img_0_rows_V_channel_U_ap_dummy_ce;
    sc_signal< sc_lv<12> > img_0_rows_V_channel_din;
    sc_signal< sc_logic > img_0_rows_V_channel_full_n;
    sc_signal< sc_logic > img_0_rows_V_channel_write;
    sc_signal< sc_lv<12> > img_0_rows_V_channel_dout;
    sc_signal< sc_logic > img_0_rows_V_channel_empty_n;
    sc_signal< sc_logic > img_0_rows_V_channel_read;
    sc_signal< sc_logic > img_0_cols_V_channel_U_ap_dummy_ce;
    sc_signal< sc_lv<12> > img_0_cols_V_channel_din;
    sc_signal< sc_logic > img_0_cols_V_channel_full_n;
    sc_signal< sc_logic > img_0_cols_V_channel_write;
    sc_signal< sc_lv<12> > img_0_cols_V_channel_dout;
    sc_signal< sc_logic > img_0_cols_V_channel_empty_n;
    sc_signal< sc_logic > img_0_cols_V_channel_read;
    sc_signal< sc_logic > img_0_data_stream_0_V_U_ap_dummy_ce;
    sc_signal< sc_lv<8> > img_0_data_stream_0_V_din;
    sc_signal< sc_logic > img_0_data_stream_0_V_full_n;
    sc_signal< sc_logic > img_0_data_stream_0_V_write;
    sc_signal< sc_lv<8> > img_0_data_stream_0_V_dout;
    sc_signal< sc_logic > img_0_data_stream_0_V_empty_n;
    sc_signal< sc_logic > img_0_data_stream_0_V_read;
    sc_signal< sc_logic > img_0_rows_V_channel19_U_ap_dummy_ce;
    sc_signal< sc_lv<12> > img_0_rows_V_channel19_din;
    sc_signal< sc_logic > img_0_rows_V_channel19_full_n;
    sc_signal< sc_logic > img_0_rows_V_channel19_write;
    sc_signal< sc_lv<12> > img_0_rows_V_channel19_dout;
    sc_signal< sc_logic > img_0_rows_V_channel19_empty_n;
    sc_signal< sc_logic > img_0_rows_V_channel19_read;
    sc_signal< sc_logic > img_0_cols_V_channel20_U_ap_dummy_ce;
    sc_signal< sc_lv<12> > img_0_cols_V_channel20_din;
    sc_signal< sc_logic > img_0_cols_V_channel20_full_n;
    sc_signal< sc_logic > img_0_cols_V_channel20_write;
    sc_signal< sc_lv<12> > img_0_cols_V_channel20_dout;
    sc_signal< sc_logic > img_0_cols_V_channel20_empty_n;
    sc_signal< sc_logic > img_0_cols_V_channel20_read;
    sc_signal< sc_logic > img_1_data_stream_0_V_U_ap_dummy_ce;
    sc_signal< sc_lv<8> > img_1_data_stream_0_V_din;
    sc_signal< sc_logic > img_1_data_stream_0_V_full_n;
    sc_signal< sc_logic > img_1_data_stream_0_V_write;
    sc_signal< sc_lv<8> > img_1_data_stream_0_V_dout;
    sc_signal< sc_logic > img_1_data_stream_0_V_empty_n;
    sc_signal< sc_logic > img_1_data_stream_0_V_read;
    sc_signal< sc_logic > img_2_data_stream_0_V_U_ap_dummy_ce;
    sc_signal< sc_lv<8> > img_2_data_stream_0_V_din;
    sc_signal< sc_logic > img_2_data_stream_0_V_full_n;
    sc_signal< sc_logic > img_2_data_stream_0_V_write;
    sc_signal< sc_lv<8> > img_2_data_stream_0_V_dout;
    sc_signal< sc_logic > img_2_data_stream_0_V_empty_n;
    sc_signal< sc_logic > img_2_data_stream_0_V_read;
    sc_signal< sc_logic > img_3_data_stream_0_V_U_ap_dummy_ce;
    sc_signal< sc_lv<8> > img_3_data_stream_0_V_din;
    sc_signal< sc_logic > img_3_data_stream_0_V_full_n;
    sc_signal< sc_logic > img_3_data_stream_0_V_write;
    sc_signal< sc_lv<8> > img_3_data_stream_0_V_dout;
    sc_signal< sc_logic > img_3_data_stream_0_V_empty_n;
    sc_signal< sc_logic > img_3_data_stream_0_V_read;
    sc_signal< sc_logic > grad_x_data_stream_0_V_U_ap_dummy_ce;
    sc_signal< sc_lv<8> > grad_x_data_stream_0_V_din;
    sc_signal< sc_logic > grad_x_data_stream_0_V_full_n;
    sc_signal< sc_logic > grad_x_data_stream_0_V_write;
    sc_signal< sc_lv<8> > grad_x_data_stream_0_V_dout;
    sc_signal< sc_logic > grad_x_data_stream_0_V_empty_n;
    sc_signal< sc_logic > grad_x_data_stream_0_V_read;
    sc_signal< sc_logic > grad_y_data_stream_0_V_U_ap_dummy_ce;
    sc_signal< sc_lv<8> > grad_y_data_stream_0_V_din;
    sc_signal< sc_logic > grad_y_data_stream_0_V_full_n;
    sc_signal< sc_logic > grad_y_data_stream_0_V_write;
    sc_signal< sc_lv<8> > grad_y_data_stream_0_V_dout;
    sc_signal< sc_logic > grad_y_data_stream_0_V_empty_n;
    sc_signal< sc_logic > grad_y_data_stream_0_V_read;
    sc_signal< sc_logic > grad_out_data_stream_0_V_U_ap_dummy_ce;
    sc_signal< sc_lv<16> > grad_out_data_stream_0_V_din;
    sc_signal< sc_logic > grad_out_data_stream_0_V_full_n;
    sc_signal< sc_logic > grad_out_data_stream_0_V_write;
    sc_signal< sc_lv<16> > grad_out_data_stream_0_V_dout;
    sc_signal< sc_logic > grad_out_data_stream_0_V_empty_n;
    sc_signal< sc_logic > grad_out_data_stream_0_V_read;
    sc_signal< sc_logic > supressed_Image_data_stream_0_U_ap_dummy_ce;
    sc_signal< sc_lv<8> > supressed_Image_data_stream_0_din;
    sc_signal< sc_logic > supressed_Image_data_stream_0_full_n;
    sc_signal< sc_logic > supressed_Image_data_stream_0_write;
    sc_signal< sc_lv<8> > supressed_Image_data_stream_0_dout;
    sc_signal< sc_logic > supressed_Image_data_stream_0_empty_n;
    sc_signal< sc_logic > supressed_Image_data_stream_0_read;
    sc_signal< sc_logic > hysterisis_Image_data_stream_0_U_ap_dummy_ce;
    sc_signal< sc_lv<8> > hysterisis_Image_data_stream_0_din;
    sc_signal< sc_logic > hysterisis_Image_data_stream_0_full_n;
    sc_signal< sc_logic > hysterisis_Image_data_stream_0_write;
    sc_signal< sc_lv<8> > hysterisis_Image_data_stream_0_dout;
    sc_signal< sc_logic > hysterisis_Image_data_stream_0_empty_n;
    sc_signal< sc_logic > hysterisis_Image_data_stream_0_read;
    sc_signal< sc_logic > ap_reg_procdone_canny_Block_proc_U0;
    sc_signal< sc_logic > ap_sig_hs_done;
    sc_signal< sc_logic > ap_reg_procdone_canny_AXIvideo2Mat_8_1024_1024_0_U0;
    sc_signal< sc_logic > ap_reg_procdone_canny_GaussianBlur_U0;
    sc_signal< sc_logic > ap_reg_procdone_canny_Duplicate_1024_1024_0_0_U0;
    sc_signal< sc_logic > ap_reg_procdone_canny_Sobel_U0;
    sc_signal< sc_logic > ap_reg_procdone_canny_Sobel_1_U0;
    sc_signal< sc_logic > ap_reg_procdone_canny_grad_computation_U0;
    sc_signal< sc_logic > ap_reg_procdone_canny_nonmax_supression_U0;
    sc_signal< sc_logic > ap_reg_procdone_canny_hysterisis_U0;
    sc_signal< sc_logic > ap_reg_procdone_canny_Mat2AXIvideo_8_1022_1022_0_U0;
    sc_signal< sc_logic > ap_CS;
    sc_signal< sc_logic > ap_sig_top_allready;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const bool ap_true;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sig_hs_continue();
    void thread_ap_sig_hs_done();
    void thread_ap_sig_top_allready();
    void thread_canny_AXIvideo2Mat_8_1024_1024_0_U0_ap_continue();
    void thread_canny_AXIvideo2Mat_8_1024_1024_0_U0_ap_start();
    void thread_canny_AXIvideo2Mat_8_1024_1024_0_U0_img_cols_V_dout();
    void thread_canny_AXIvideo2Mat_8_1024_1024_0_U0_img_cols_V_empty_n();
    void thread_canny_AXIvideo2Mat_8_1024_1024_0_U0_img_cols_V_out_full_n();
    void thread_canny_AXIvideo2Mat_8_1024_1024_0_U0_img_data_stream_V_full_n();
    void thread_canny_AXIvideo2Mat_8_1024_1024_0_U0_img_rows_V_dout();
    void thread_canny_AXIvideo2Mat_8_1024_1024_0_U0_img_rows_V_empty_n();
    void thread_canny_AXIvideo2Mat_8_1024_1024_0_U0_img_rows_V_out_full_n();
    void thread_canny_AXIvideo2Mat_8_1024_1024_0_U0_input_stream_TDATA();
    void thread_canny_AXIvideo2Mat_8_1024_1024_0_U0_input_stream_TDEST();
    void thread_canny_AXIvideo2Mat_8_1024_1024_0_U0_input_stream_TID();
    void thread_canny_AXIvideo2Mat_8_1024_1024_0_U0_input_stream_TKEEP();
    void thread_canny_AXIvideo2Mat_8_1024_1024_0_U0_input_stream_TLAST();
    void thread_canny_AXIvideo2Mat_8_1024_1024_0_U0_input_stream_TSTRB();
    void thread_canny_AXIvideo2Mat_8_1024_1024_0_U0_input_stream_TUSER();
    void thread_canny_AXIvideo2Mat_8_1024_1024_0_U0_input_stream_TVALID();
    void thread_canny_Block_proc_U0_ap_continue();
    void thread_canny_Block_proc_U0_ap_start();
    void thread_canny_Block_proc_U0_img_0_cols_V_out_full_n();
    void thread_canny_Block_proc_U0_img_0_rows_V_out_full_n();
    void thread_canny_Duplicate_1024_1024_0_0_U0_ap_continue();
    void thread_canny_Duplicate_1024_1024_0_0_U0_dst1_data_stream_V_full_n();
    void thread_canny_Duplicate_1024_1024_0_0_U0_dst2_data_stream_V_full_n();
    void thread_canny_Duplicate_1024_1024_0_0_U0_src_data_stream_V_dout();
    void thread_canny_Duplicate_1024_1024_0_0_U0_src_data_stream_V_empty_n();
    void thread_canny_GaussianBlur_U0_ap_continue();
    void thread_canny_GaussianBlur_U0_p_dst_data_stream_V_full_n();
    void thread_canny_GaussianBlur_U0_p_src_cols_V_dout();
    void thread_canny_GaussianBlur_U0_p_src_cols_V_empty_n();
    void thread_canny_GaussianBlur_U0_p_src_data_stream_V_dout();
    void thread_canny_GaussianBlur_U0_p_src_data_stream_V_empty_n();
    void thread_canny_GaussianBlur_U0_p_src_rows_V_dout();
    void thread_canny_GaussianBlur_U0_p_src_rows_V_empty_n();
    void thread_canny_Mat2AXIvideo_8_1022_1022_0_U0_ap_continue();
    void thread_canny_Mat2AXIvideo_8_1022_1022_0_U0_img_data_stream_V_dout();
    void thread_canny_Mat2AXIvideo_8_1022_1022_0_U0_img_data_stream_V_empty_n();
    void thread_canny_Mat2AXIvideo_8_1022_1022_0_U0_output_stream_TREADY();
    void thread_canny_Sobel_1_U0_ap_continue();
    void thread_canny_Sobel_1_U0_p_dst_data_stream_V_full_n();
    void thread_canny_Sobel_1_U0_p_src_data_stream_V_dout();
    void thread_canny_Sobel_1_U0_p_src_data_stream_V_empty_n();
    void thread_canny_Sobel_U0_ap_continue();
    void thread_canny_Sobel_U0_p_dst_data_stream_V_full_n();
    void thread_canny_Sobel_U0_p_src_data_stream_V_dout();
    void thread_canny_Sobel_U0_p_src_data_stream_V_empty_n();
    void thread_canny_grad_computation_U0_ap_continue();
    void thread_canny_grad_computation_U0_grad_out_data_stream_V_full_n();
    void thread_canny_grad_computation_U0_grad_x_data_stream_V_dout();
    void thread_canny_grad_computation_U0_grad_x_data_stream_V_empty_n();
    void thread_canny_grad_computation_U0_grad_y_data_stream_V_dout();
    void thread_canny_grad_computation_U0_grad_y_data_stream_V_empty_n();
    void thread_canny_hysterisis_U0_ap_continue();
    void thread_canny_hysterisis_U0_hysterisis_Image_data_stream_V_full_n();
    void thread_canny_hysterisis_U0_supressed_data_stream_V_dout();
    void thread_canny_hysterisis_U0_supressed_data_stream_V_empty_n();
    void thread_canny_nonmax_supression_U0_ap_continue();
    void thread_canny_nonmax_supression_U0_grad_out_data_stream_V_dout();
    void thread_canny_nonmax_supression_U0_grad_out_data_stream_V_empty_n();
    void thread_canny_nonmax_supression_U0_supressed_data_stream_V_full_n();
    void thread_grad_out_data_stream_0_V_U_ap_dummy_ce();
    void thread_grad_out_data_stream_0_V_din();
    void thread_grad_out_data_stream_0_V_read();
    void thread_grad_out_data_stream_0_V_write();
    void thread_grad_x_data_stream_0_V_U_ap_dummy_ce();
    void thread_grad_x_data_stream_0_V_din();
    void thread_grad_x_data_stream_0_V_read();
    void thread_grad_x_data_stream_0_V_write();
    void thread_grad_y_data_stream_0_V_U_ap_dummy_ce();
    void thread_grad_y_data_stream_0_V_din();
    void thread_grad_y_data_stream_0_V_read();
    void thread_grad_y_data_stream_0_V_write();
    void thread_hysterisis_Image_data_stream_0_U_ap_dummy_ce();
    void thread_hysterisis_Image_data_stream_0_din();
    void thread_hysterisis_Image_data_stream_0_read();
    void thread_hysterisis_Image_data_stream_0_write();
    void thread_img_0_cols_V_channel20_U_ap_dummy_ce();
    void thread_img_0_cols_V_channel20_din();
    void thread_img_0_cols_V_channel20_read();
    void thread_img_0_cols_V_channel20_write();
    void thread_img_0_cols_V_channel_U_ap_dummy_ce();
    void thread_img_0_cols_V_channel_din();
    void thread_img_0_cols_V_channel_read();
    void thread_img_0_cols_V_channel_write();
    void thread_img_0_data_stream_0_V_U_ap_dummy_ce();
    void thread_img_0_data_stream_0_V_din();
    void thread_img_0_data_stream_0_V_read();
    void thread_img_0_data_stream_0_V_write();
    void thread_img_0_rows_V_channel19_U_ap_dummy_ce();
    void thread_img_0_rows_V_channel19_din();
    void thread_img_0_rows_V_channel19_read();
    void thread_img_0_rows_V_channel19_write();
    void thread_img_0_rows_V_channel_U_ap_dummy_ce();
    void thread_img_0_rows_V_channel_din();
    void thread_img_0_rows_V_channel_read();
    void thread_img_0_rows_V_channel_write();
    void thread_img_1_data_stream_0_V_U_ap_dummy_ce();
    void thread_img_1_data_stream_0_V_din();
    void thread_img_1_data_stream_0_V_read();
    void thread_img_1_data_stream_0_V_write();
    void thread_img_2_data_stream_0_V_U_ap_dummy_ce();
    void thread_img_2_data_stream_0_V_din();
    void thread_img_2_data_stream_0_V_read();
    void thread_img_2_data_stream_0_V_write();
    void thread_img_3_data_stream_0_V_U_ap_dummy_ce();
    void thread_img_3_data_stream_0_V_din();
    void thread_img_3_data_stream_0_V_read();
    void thread_img_3_data_stream_0_V_write();
    void thread_input_stream_TREADY();
    void thread_output_stream_TDATA();
    void thread_output_stream_TDEST();
    void thread_output_stream_TID();
    void thread_output_stream_TKEEP();
    void thread_output_stream_TLAST();
    void thread_output_stream_TSTRB();
    void thread_output_stream_TUSER();
    void thread_output_stream_TVALID();
    void thread_supressed_Image_data_stream_0_U_ap_dummy_ce();
    void thread_supressed_Image_data_stream_0_din();
    void thread_supressed_Image_data_stream_0_read();
    void thread_supressed_Image_data_stream_0_write();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
