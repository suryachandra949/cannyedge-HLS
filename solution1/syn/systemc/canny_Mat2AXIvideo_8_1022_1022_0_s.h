// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _canny_Mat2AXIvideo_8_1022_1022_0_s_HH_
#define _canny_Mat2AXIvideo_8_1022_1022_0_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct canny_Mat2AXIvideo_8_1022_1022_0_s : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > img_data_stream_V_dout;
    sc_in< sc_logic > img_data_stream_V_empty_n;
    sc_out< sc_logic > img_data_stream_V_read;
    sc_out< sc_lv<8> > output_stream_TDATA;
    sc_out< sc_logic > output_stream_TVALID;
    sc_in< sc_logic > output_stream_TREADY;
    sc_out< sc_lv<1> > output_stream_TKEEP;
    sc_out< sc_lv<1> > output_stream_TSTRB;
    sc_out< sc_lv<1> > output_stream_TUSER;
    sc_out< sc_lv<1> > output_stream_TLAST;
    sc_out< sc_lv<1> > output_stream_TID;
    sc_out< sc_lv<1> > output_stream_TDEST;


    // Module declarations
    canny_Mat2AXIvideo_8_1022_1022_0_s(sc_module_name name);
    SC_HAS_PROCESS(canny_Mat2AXIvideo_8_1022_1022_0_s);

    ~canny_Mat2AXIvideo_8_1022_1022_0_s();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_23;
    sc_signal< sc_lv<10> > p_5_reg_121;
    sc_signal< sc_lv<1> > exitcond1_fu_137_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_52;
    sc_signal< sc_lv<10> > i_V_fu_143_p2;
    sc_signal< sc_lv<10> > i_V_reg_187;
    sc_signal< sc_lv<1> > exitcond_fu_149_p2;
    sc_signal< sc_lv<1> > exitcond_reg_192;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_2;
    sc_signal< bool > ap_sig_bdd_63;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< bool > ap_sig_bdd_71;
    sc_signal< sc_logic > ap_sig_ioackin_output_stream_TREADY;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_lv<10> > j_V_fu_155_p2;
    sc_signal< sc_lv<1> > axi_last_V_fu_161_p2;
    sc_signal< sc_lv<1> > axi_last_V_reg_201;
    sc_signal< sc_lv<10> > p_s_reg_110;
    sc_signal< bool > ap_sig_bdd_100;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_3;
    sc_signal< bool > ap_sig_bdd_108;
    sc_signal< sc_lv<1> > tmp_user_V_fu_70;
    sc_signal< sc_logic > ap_reg_ioackin_output_stream_TREADY;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_st1_fsm_0;
    static const sc_lv<4> ap_ST_st2_fsm_1;
    static const sc_lv<4> ap_ST_pp0_stg0_fsm_2;
    static const sc_lv<4> ap_ST_st5_fsm_3;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<10> ap_const_lv10_3FE;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<10> ap_const_lv10_3FD;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_100();
    void thread_ap_sig_bdd_108();
    void thread_ap_sig_bdd_23();
    void thread_ap_sig_bdd_52();
    void thread_ap_sig_bdd_63();
    void thread_ap_sig_bdd_71();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_2();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st5_fsm_3();
    void thread_ap_sig_ioackin_output_stream_TREADY();
    void thread_axi_last_V_fu_161_p2();
    void thread_exitcond1_fu_137_p2();
    void thread_exitcond_fu_149_p2();
    void thread_i_V_fu_143_p2();
    void thread_img_data_stream_V_read();
    void thread_j_V_fu_155_p2();
    void thread_output_stream_TDATA();
    void thread_output_stream_TDEST();
    void thread_output_stream_TID();
    void thread_output_stream_TKEEP();
    void thread_output_stream_TLAST();
    void thread_output_stream_TSTRB();
    void thread_output_stream_TUSER();
    void thread_output_stream_TVALID();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
