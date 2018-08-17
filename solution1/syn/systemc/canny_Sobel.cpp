// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "canny_Sobel.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic canny_Sobel::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic canny_Sobel::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> canny_Sobel::ap_ST_st1_fsm_0 = "1";
const sc_lv<2> canny_Sobel::ap_ST_st2_fsm_1 = "10";
const sc_lv<32> canny_Sobel::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> canny_Sobel::ap_const_lv1_1 = "1";
const sc_lv<32> canny_Sobel::ap_const_lv32_1 = "1";
const sc_lv<2> canny_Sobel::ap_const_lv2_0 = "00";
const sc_lv<2> canny_Sobel::ap_const_lv2_1 = "1";
const sc_lv<3> canny_Sobel::ap_const_lv3_6 = "110";
const sc_lv<4> canny_Sobel::ap_const_lv4_2 = "10";
const sc_lv<2> canny_Sobel::ap_const_lv2_3 = "11";
const sc_lv<3> canny_Sobel::ap_const_lv3_0 = "000";

canny_Sobel::canny_Sobel(sc_module_name name) : sc_module(name), mVcdFile(0) {
    grp_canny_Filter2D_fu_26 = new canny_Filter2D("grp_canny_Filter2D_fu_26");
    grp_canny_Filter2D_fu_26->ap_clk(ap_clk);
    grp_canny_Filter2D_fu_26->ap_rst(ap_rst);
    grp_canny_Filter2D_fu_26->ap_start(grp_canny_Filter2D_fu_26_ap_start);
    grp_canny_Filter2D_fu_26->ap_done(grp_canny_Filter2D_fu_26_ap_done);
    grp_canny_Filter2D_fu_26->ap_idle(grp_canny_Filter2D_fu_26_ap_idle);
    grp_canny_Filter2D_fu_26->ap_ready(grp_canny_Filter2D_fu_26_ap_ready);
    grp_canny_Filter2D_fu_26->p_src_data_stream_V_dout(grp_canny_Filter2D_fu_26_p_src_data_stream_V_dout);
    grp_canny_Filter2D_fu_26->p_src_data_stream_V_empty_n(grp_canny_Filter2D_fu_26_p_src_data_stream_V_empty_n);
    grp_canny_Filter2D_fu_26->p_src_data_stream_V_read(grp_canny_Filter2D_fu_26_p_src_data_stream_V_read);
    grp_canny_Filter2D_fu_26->p_dst_data_stream_V_din(grp_canny_Filter2D_fu_26_p_dst_data_stream_V_din);
    grp_canny_Filter2D_fu_26->p_dst_data_stream_V_full_n(grp_canny_Filter2D_fu_26_p_dst_data_stream_V_full_n);
    grp_canny_Filter2D_fu_26->p_dst_data_stream_V_write(grp_canny_Filter2D_fu_26_p_dst_data_stream_V_write);
    grp_canny_Filter2D_fu_26->p_kernel_val_0_V_1_read(grp_canny_Filter2D_fu_26_p_kernel_val_0_V_1_read);
    grp_canny_Filter2D_fu_26->p_kernel_val_0_V_2_read(grp_canny_Filter2D_fu_26_p_kernel_val_0_V_2_read);
    grp_canny_Filter2D_fu_26->p_kernel_val_1_V_0_read(grp_canny_Filter2D_fu_26_p_kernel_val_1_V_0_read);
    grp_canny_Filter2D_fu_26->p_kernel_val_1_V_2_read(grp_canny_Filter2D_fu_26_p_kernel_val_1_V_2_read);
    grp_canny_Filter2D_fu_26->p_kernel_val_2_V_0_read(grp_canny_Filter2D_fu_26_p_kernel_val_2_V_0_read);
    grp_canny_Filter2D_fu_26->p_kernel_val_2_V_1_read(grp_canny_Filter2D_fu_26_p_kernel_val_2_V_1_read);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( grp_canny_Filter2D_fu_26_ap_done );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( grp_canny_Filter2D_fu_26_ap_done );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_ap_sig_bdd_21);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_bdd_59);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_sig_bdd_67);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_bdd_21 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_bdd_67 );

    SC_METHOD(thread_grp_canny_Filter2D_fu_26_ap_start);
    sensitive << ( grp_canny_Filter2D_fu_26_ap_start_ap_start_reg );

    SC_METHOD(thread_grp_canny_Filter2D_fu_26_p_dst_data_stream_V_full_n);
    sensitive << ( p_dst_data_stream_V_full_n );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_grp_canny_Filter2D_fu_26_p_kernel_val_0_V_1_read);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_grp_canny_Filter2D_fu_26_p_kernel_val_0_V_2_read);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_grp_canny_Filter2D_fu_26_p_kernel_val_1_V_0_read);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_grp_canny_Filter2D_fu_26_p_kernel_val_1_V_2_read);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_grp_canny_Filter2D_fu_26_p_kernel_val_2_V_0_read);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_grp_canny_Filter2D_fu_26_p_kernel_val_2_V_1_read);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_grp_canny_Filter2D_fu_26_p_src_data_stream_V_dout);
    sensitive << ( p_src_data_stream_V_dout );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_grp_canny_Filter2D_fu_26_p_src_data_stream_V_empty_n);
    sensitive << ( p_src_data_stream_V_empty_n );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_p_dst_data_stream_V_din);
    sensitive << ( grp_canny_Filter2D_fu_26_p_dst_data_stream_V_din );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_p_dst_data_stream_V_write);
    sensitive << ( grp_canny_Filter2D_fu_26_p_dst_data_stream_V_write );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_p_src_data_stream_V_read);
    sensitive << ( grp_canny_Filter2D_fu_26_p_src_data_stream_V_read );
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_CS_fsm );
    sensitive << ( grp_canny_Filter2D_fu_26_ap_done );
    sensitive << ( ap_sig_bdd_59 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "01";
    grp_canny_Filter2D_fu_26_ap_start_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "canny_Sobel_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, p_src_data_stream_V_dout, "(port)p_src_data_stream_V_dout");
    sc_trace(mVcdFile, p_src_data_stream_V_empty_n, "(port)p_src_data_stream_V_empty_n");
    sc_trace(mVcdFile, p_src_data_stream_V_read, "(port)p_src_data_stream_V_read");
    sc_trace(mVcdFile, p_dst_data_stream_V_din, "(port)p_dst_data_stream_V_din");
    sc_trace(mVcdFile, p_dst_data_stream_V_full_n, "(port)p_dst_data_stream_V_full_n");
    sc_trace(mVcdFile, p_dst_data_stream_V_write, "(port)p_dst_data_stream_V_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_bdd_21, "ap_sig_bdd_21");
    sc_trace(mVcdFile, grp_canny_Filter2D_fu_26_ap_start, "grp_canny_Filter2D_fu_26_ap_start");
    sc_trace(mVcdFile, grp_canny_Filter2D_fu_26_ap_done, "grp_canny_Filter2D_fu_26_ap_done");
    sc_trace(mVcdFile, grp_canny_Filter2D_fu_26_ap_idle, "grp_canny_Filter2D_fu_26_ap_idle");
    sc_trace(mVcdFile, grp_canny_Filter2D_fu_26_ap_ready, "grp_canny_Filter2D_fu_26_ap_ready");
    sc_trace(mVcdFile, grp_canny_Filter2D_fu_26_p_src_data_stream_V_dout, "grp_canny_Filter2D_fu_26_p_src_data_stream_V_dout");
    sc_trace(mVcdFile, grp_canny_Filter2D_fu_26_p_src_data_stream_V_empty_n, "grp_canny_Filter2D_fu_26_p_src_data_stream_V_empty_n");
    sc_trace(mVcdFile, grp_canny_Filter2D_fu_26_p_src_data_stream_V_read, "grp_canny_Filter2D_fu_26_p_src_data_stream_V_read");
    sc_trace(mVcdFile, grp_canny_Filter2D_fu_26_p_dst_data_stream_V_din, "grp_canny_Filter2D_fu_26_p_dst_data_stream_V_din");
    sc_trace(mVcdFile, grp_canny_Filter2D_fu_26_p_dst_data_stream_V_full_n, "grp_canny_Filter2D_fu_26_p_dst_data_stream_V_full_n");
    sc_trace(mVcdFile, grp_canny_Filter2D_fu_26_p_dst_data_stream_V_write, "grp_canny_Filter2D_fu_26_p_dst_data_stream_V_write");
    sc_trace(mVcdFile, grp_canny_Filter2D_fu_26_p_kernel_val_0_V_1_read, "grp_canny_Filter2D_fu_26_p_kernel_val_0_V_1_read");
    sc_trace(mVcdFile, grp_canny_Filter2D_fu_26_p_kernel_val_0_V_2_read, "grp_canny_Filter2D_fu_26_p_kernel_val_0_V_2_read");
    sc_trace(mVcdFile, grp_canny_Filter2D_fu_26_p_kernel_val_1_V_0_read, "grp_canny_Filter2D_fu_26_p_kernel_val_1_V_0_read");
    sc_trace(mVcdFile, grp_canny_Filter2D_fu_26_p_kernel_val_1_V_2_read, "grp_canny_Filter2D_fu_26_p_kernel_val_1_V_2_read");
    sc_trace(mVcdFile, grp_canny_Filter2D_fu_26_p_kernel_val_2_V_0_read, "grp_canny_Filter2D_fu_26_p_kernel_val_2_V_0_read");
    sc_trace(mVcdFile, grp_canny_Filter2D_fu_26_p_kernel_val_2_V_1_read, "grp_canny_Filter2D_fu_26_p_kernel_val_2_V_1_read");
    sc_trace(mVcdFile, grp_canny_Filter2D_fu_26_ap_start_ap_start_reg, "grp_canny_Filter2D_fu_26_ap_start_ap_start_reg");
    sc_trace(mVcdFile, ap_sig_bdd_59, "ap_sig_bdd_59");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_bdd_67, "ap_sig_bdd_67");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

canny_Sobel::~canny_Sobel() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete grp_canny_Filter2D_fu_26;
}

void canny_Sobel::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
                    !esl_seteq<1,1,1>(ap_const_logic_0, grp_canny_Filter2D_fu_26_ap_done.read()))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_canny_Filter2D_fu_26_ap_start_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
             !ap_sig_bdd_59.read())) {
            grp_canny_Filter2D_fu_26_ap_start_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_canny_Filter2D_fu_26_ap_ready.read())) {
            grp_canny_Filter2D_fu_26_ap_start_ap_start_reg = ap_const_logic_0;
        }
    }
}

void canny_Sobel::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_done_reg.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
          !esl_seteq<1,1,1>(ap_const_logic_0, grp_canny_Filter2D_fu_26_ap_done.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void canny_Sobel::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void canny_Sobel::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(ap_const_logic_0, grp_canny_Filter2D_fu_26_ap_done.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void canny_Sobel::thread_ap_sig_bdd_21() {
    ap_sig_bdd_21 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void canny_Sobel::thread_ap_sig_bdd_59() {
    ap_sig_bdd_59 = (esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void canny_Sobel::thread_ap_sig_bdd_67() {
    ap_sig_bdd_67 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void canny_Sobel::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_bdd_21.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void canny_Sobel::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_bdd_67.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void canny_Sobel::thread_grp_canny_Filter2D_fu_26_ap_start() {
    grp_canny_Filter2D_fu_26_ap_start = grp_canny_Filter2D_fu_26_ap_start_ap_start_reg.read();
}

void canny_Sobel::thread_grp_canny_Filter2D_fu_26_p_dst_data_stream_V_full_n() {
    grp_canny_Filter2D_fu_26_p_dst_data_stream_V_full_n = p_dst_data_stream_V_full_n.read();
}

void canny_Sobel::thread_grp_canny_Filter2D_fu_26_p_kernel_val_0_V_1_read() {
    grp_canny_Filter2D_fu_26_p_kernel_val_0_V_1_read = ap_const_lv2_0;
}

void canny_Sobel::thread_grp_canny_Filter2D_fu_26_p_kernel_val_0_V_2_read() {
    grp_canny_Filter2D_fu_26_p_kernel_val_0_V_2_read = ap_const_lv2_1;
}

void canny_Sobel::thread_grp_canny_Filter2D_fu_26_p_kernel_val_1_V_0_read() {
    grp_canny_Filter2D_fu_26_p_kernel_val_1_V_0_read = ap_const_lv3_6;
}

void canny_Sobel::thread_grp_canny_Filter2D_fu_26_p_kernel_val_1_V_2_read() {
    grp_canny_Filter2D_fu_26_p_kernel_val_1_V_2_read = ap_const_lv4_2;
}

void canny_Sobel::thread_grp_canny_Filter2D_fu_26_p_kernel_val_2_V_0_read() {
    grp_canny_Filter2D_fu_26_p_kernel_val_2_V_0_read = ap_const_lv2_3;
}

void canny_Sobel::thread_grp_canny_Filter2D_fu_26_p_kernel_val_2_V_1_read() {
    grp_canny_Filter2D_fu_26_p_kernel_val_2_V_1_read = ap_const_lv3_0;
}

void canny_Sobel::thread_grp_canny_Filter2D_fu_26_p_src_data_stream_V_dout() {
    grp_canny_Filter2D_fu_26_p_src_data_stream_V_dout = p_src_data_stream_V_dout.read();
}

void canny_Sobel::thread_grp_canny_Filter2D_fu_26_p_src_data_stream_V_empty_n() {
    grp_canny_Filter2D_fu_26_p_src_data_stream_V_empty_n = p_src_data_stream_V_empty_n.read();
}

void canny_Sobel::thread_p_dst_data_stream_V_din() {
    p_dst_data_stream_V_din = grp_canny_Filter2D_fu_26_p_dst_data_stream_V_din.read();
}

void canny_Sobel::thread_p_dst_data_stream_V_write() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        p_dst_data_stream_V_write = grp_canny_Filter2D_fu_26_p_dst_data_stream_V_write.read();
    } else {
        p_dst_data_stream_V_write = ap_const_logic_0;
    }
}

void canny_Sobel::thread_p_src_data_stream_V_read() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        p_src_data_stream_V_read = grp_canny_Filter2D_fu_26_p_src_data_stream_V_read.read();
    } else {
        p_src_data_stream_V_read = ap_const_logic_0;
    }
}

void canny_Sobel::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!ap_sig_bdd_59.read()) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if (!esl_seteq<1,1,1>(ap_const_logic_0, grp_canny_Filter2D_fu_26_ap_done.read())) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            }
            break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}

}

