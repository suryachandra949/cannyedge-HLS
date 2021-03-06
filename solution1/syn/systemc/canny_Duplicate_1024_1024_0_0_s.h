// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _canny_Duplicate_1024_1024_0_0_s_HH_
#define _canny_Duplicate_1024_1024_0_0_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct canny_Duplicate_1024_1024_0_0_s : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > src_data_stream_V_dout;
    sc_in< sc_logic > src_data_stream_V_empty_n;
    sc_out< sc_logic > src_data_stream_V_read;
    sc_out< sc_lv<8> > dst1_data_stream_V_din;
    sc_in< sc_logic > dst1_data_stream_V_full_n;
    sc_out< sc_logic > dst1_data_stream_V_write;
    sc_out< sc_lv<8> > dst2_data_stream_V_din;
    sc_in< sc_logic > dst2_data_stream_V_full_n;
    sc_out< sc_logic > dst2_data_stream_V_write;


    // Module declarations
    canny_Duplicate_1024_1024_0_0_s(sc_module_name name);
    SC_HAS_PROCESS(canny_Duplicate_1024_1024_0_0_s);

    ~canny_Duplicate_1024_1024_0_0_s();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_23;
    sc_signal< sc_lv<11> > p_6_reg_83;
    sc_signal< sc_lv<1> > exitcond2_fu_94_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_51;
    sc_signal< sc_lv<11> > i_V_fu_100_p2;
    sc_signal< sc_lv<11> > i_V_reg_122;
    sc_signal< sc_lv<1> > exitcond_fu_106_p2;
    sc_signal< sc_lv<1> > exitcond_reg_127;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_2;
    sc_signal< bool > ap_sig_bdd_62;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< bool > ap_sig_bdd_76;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_lv<11> > j_V_fu_112_p2;
    sc_signal< sc_lv<11> > p_s_reg_72;
    sc_signal< bool > ap_sig_bdd_99;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_3;
    sc_signal< bool > ap_sig_bdd_107;
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
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<11> ap_const_lv11_400;
    static const sc_lv<11> ap_const_lv11_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_107();
    void thread_ap_sig_bdd_23();
    void thread_ap_sig_bdd_51();
    void thread_ap_sig_bdd_62();
    void thread_ap_sig_bdd_76();
    void thread_ap_sig_bdd_99();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_2();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st5_fsm_3();
    void thread_dst1_data_stream_V_din();
    void thread_dst1_data_stream_V_write();
    void thread_dst2_data_stream_V_din();
    void thread_dst2_data_stream_V_write();
    void thread_exitcond2_fu_94_p2();
    void thread_exitcond_fu_106_p2();
    void thread_i_V_fu_100_p2();
    void thread_j_V_fu_112_p2();
    void thread_src_data_stream_V_read();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
