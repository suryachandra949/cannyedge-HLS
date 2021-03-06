// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _canny_nonmax_supression_HH_
#define _canny_nonmax_supression_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "canny_nonmax_supression_Buffer_val_0.h"

namespace ap_rtl {

struct canny_nonmax_supression : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<16> > grad_out_data_stream_V_dout;
    sc_in< sc_logic > grad_out_data_stream_V_empty_n;
    sc_out< sc_logic > grad_out_data_stream_V_read;
    sc_out< sc_lv<8> > supressed_data_stream_V_din;
    sc_in< sc_logic > supressed_data_stream_V_full_n;
    sc_out< sc_logic > supressed_data_stream_V_write;


    // Module declarations
    canny_nonmax_supression(sc_module_name name);
    SC_HAS_PROCESS(canny_nonmax_supression);

    ~canny_nonmax_supression();

    sc_trace_file* mVcdFile;

    canny_nonmax_supression_Buffer_val_0* Buffer_val_0_U;
    canny_nonmax_supression_Buffer_val_0* Buffer_val_1_U;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_22;
    sc_signal< sc_lv<11> > p_1_reg_180;
    sc_signal< sc_lv<11> > ap_reg_ppstg_p_1_reg_180_pp0_it1;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_2;
    sc_signal< bool > ap_sig_bdd_45;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_lv<1> > tmp_3_reg_704;
    sc_signal< bool > ap_sig_bdd_54;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it2;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it3;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it4;
    sc_signal< sc_lv<1> > or_cond4_reg_736;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond4_reg_736_pp0_it4;
    sc_signal< bool > ap_sig_bdd_69;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it5;
    sc_signal< sc_lv<1> > exitcond1_fu_192_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_83;
    sc_signal< sc_lv<11> > i_V_fu_198_p2;
    sc_signal< sc_lv<11> > i_V_reg_680;
    sc_signal< sc_lv<1> > icmp_fu_214_p2;
    sc_signal< sc_lv<1> > icmp_reg_685;
    sc_signal< sc_lv<1> > tmp_2_fu_220_p2;
    sc_signal< sc_lv<1> > tmp_2_reg_690;
    sc_signal< sc_lv<1> > exitcond_fu_226_p2;
    sc_signal< sc_lv<1> > exitcond_reg_695;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_695_pp0_it1;
    sc_signal< sc_lv<11> > j_V_fu_232_p2;
    sc_signal< sc_lv<11> > j_V_reg_699;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_3_reg_704_pp0_it1;
    sc_signal< sc_lv<1> > tmp_7_fu_252_p3;
    sc_signal< sc_lv<1> > tmp_7_reg_708;
    sc_signal< sc_lv<1> > ap_reg_ppstg_tmp_7_reg_708_pp0_it1;
    sc_signal< sc_lv<10> > Buffer_val_1_addr_reg_715;
    sc_signal< sc_lv<10> > ap_reg_ppstg_Buffer_val_1_addr_reg_715_pp0_it1;
    sc_signal< sc_lv<1> > tmp9_fu_282_p2;
    sc_signal< sc_lv<1> > tmp9_reg_726;
    sc_signal< sc_lv<1> > tmp_21_reg_731;
    sc_signal< sc_lv<1> > or_cond4_fu_301_p2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond4_reg_736_pp0_it1;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond4_reg_736_pp0_it2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond4_reg_736_pp0_it3;
    sc_signal< sc_lv<16> > Buffer_val_0_q0;
    sc_signal< sc_lv<16> > temp1_reg_740;
    sc_signal< sc_lv<1> > or_cond2_fu_321_p2;
    sc_signal< sc_lv<1> > or_cond2_reg_745;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond2_reg_745_pp0_it2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond2_reg_745_pp0_it3;
    sc_signal< sc_lv<6> > tmp_12_fu_386_p1;
    sc_signal< sc_lv<6> > tmp_12_reg_750;
    sc_signal< sc_lv<1> > sel_tmp2_fu_414_p2;
    sc_signal< sc_lv<1> > sel_tmp2_reg_755;
    sc_signal< sc_lv<8> > tmp_11_reg_761;
    sc_signal< sc_lv<8> > tmp_27_fu_468_p3;
    sc_signal< sc_lv<8> > tmp_27_reg_766;
    sc_signal< sc_lv<8> > tmp_13_reg_771;
    sc_signal< sc_lv<8> > tmp_32_fu_524_p3;
    sc_signal< sc_lv<8> > tmp_32_reg_776;
    sc_signal< sc_lv<8> > out_pixel_val_2_fu_571_p3;
    sc_signal< sc_lv<8> > out_pixel_val_2_reg_781;
    sc_signal< sc_lv<1> > tmp_14_fu_588_p2;
    sc_signal< sc_lv<1> > tmp_14_reg_786;
    sc_signal< sc_lv<1> > tmp_15_fu_594_p2;
    sc_signal< sc_lv<1> > tmp_15_reg_791;
    sc_signal< sc_lv<8> > tmp_33_fu_611_p3;
    sc_signal< sc_lv<8> > tmp_33_reg_796;
    sc_signal< sc_lv<10> > Buffer_val_0_address0;
    sc_signal< sc_logic > Buffer_val_0_ce0;
    sc_signal< sc_lv<10> > Buffer_val_0_address1;
    sc_signal< sc_logic > Buffer_val_0_ce1;
    sc_signal< sc_logic > Buffer_val_0_we1;
    sc_signal< sc_lv<16> > Buffer_val_0_d1;
    sc_signal< sc_lv<10> > Buffer_val_1_address0;
    sc_signal< sc_logic > Buffer_val_1_ce0;
    sc_signal< sc_lv<16> > Buffer_val_1_q0;
    sc_signal< sc_lv<10> > Buffer_val_1_address1;
    sc_signal< sc_logic > Buffer_val_1_ce1;
    sc_signal< sc_logic > Buffer_val_1_we1;
    sc_signal< sc_lv<16> > Buffer_val_1_d1;
    sc_signal< sc_lv<11> > p_s_reg_168;
    sc_signal< bool > ap_sig_bdd_197;
    sc_signal< sc_lv<11> > ap_reg_phibuf_p_s_reg_168;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_sig_nseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_207;
    sc_signal< sc_lv<11> > p_1_phi_fu_184_p4;
    sc_signal< sc_lv<64> > tmp_8_fu_260_p1;
    sc_signal< sc_lv<64> > tmp_9_fu_329_p1;
    sc_signal< sc_lv<16> > temp1_s_fu_76;
    sc_signal< sc_lv<16> > temp2_s_fu_80;
    sc_signal< sc_lv<16> > pixel_value_s_fu_84;
    sc_signal< sc_lv<16> > Win_val_0_1_fu_88;
    sc_signal< sc_lv<16> > Win_val_0_0_0_Win_val_0_0_1_fu_375_p3;
    sc_signal< sc_lv<16> > Win_val_0_1_1_fu_92;
    sc_signal< sc_lv<16> > Win_val_1_1_fu_96;
    sc_signal< sc_lv<16> > Win_val_1_0_0_Win_val_1_0_1_fu_368_p3;
    sc_signal< sc_lv<16> > Win_val_1_1_1_fu_100;
    sc_signal< sc_lv<16> > Win_val_2_1_fu_104;
    sc_signal< sc_lv<16> > Win_val_2_0_0_Win_val_2_0_1_fu_361_p3;
    sc_signal< sc_lv<16> > Win_val_2_1_1_fu_108;
    sc_signal< sc_lv<10> > tmp_fu_204_p4;
    sc_signal< sc_lv<11> > tmp_4_fu_238_p2;
    sc_signal< sc_lv<10> > tmp_20_fu_266_p4;
    sc_signal< sc_lv<1> > icmp1_fu_276_p2;
    sc_signal< sc_lv<1> > tmp_16_fu_295_p2;
    sc_signal< sc_lv<2> > current_dir_fu_382_p1;
    sc_signal< sc_lv<1> > tmp_s_fu_390_p2;
    sc_signal< sc_lv<1> > tmp_5_fu_396_p2;
    sc_signal< sc_lv<1> > sel_tmp1_fu_408_p2;
    sc_signal< sc_lv<1> > tmp_10_fu_402_p2;
    sc_signal< sc_lv<8> > tmp_24_fu_440_p4;
    sc_signal< sc_lv<8> > tmp_25_fu_450_p4;
    sc_signal< sc_lv<8> > tmp_22_fu_430_p4;
    sc_signal< sc_lv<8> > tmp_26_fu_460_p3;
    sc_signal< sc_lv<8> > tmp_29_fu_496_p4;
    sc_signal< sc_lv<8> > tmp_30_fu_506_p4;
    sc_signal< sc_lv<8> > tmp_28_fu_486_p4;
    sc_signal< sc_lv<8> > tmp_31_fu_516_p3;
    sc_signal< sc_lv<8> > ga_fu_583_p3;
    sc_signal< sc_lv<8> > gb_fu_578_p3;
    sc_signal< sc_lv<1> > or_cond3_fu_600_p2;
    sc_signal< sc_lv<8> > out_pixel_val_fu_604_p3;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_st1_fsm_0;
    static const sc_lv<3> ap_ST_st2_fsm_1;
    static const sc_lv<3> ap_ST_pp0_stg0_fsm_2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<11> ap_const_lv11_401;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<8> ap_const_lv8_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_Buffer_val_0_address0();
    void thread_Buffer_val_0_address1();
    void thread_Buffer_val_0_ce0();
    void thread_Buffer_val_0_ce1();
    void thread_Buffer_val_0_d1();
    void thread_Buffer_val_0_we1();
    void thread_Buffer_val_1_address0();
    void thread_Buffer_val_1_address1();
    void thread_Buffer_val_1_ce0();
    void thread_Buffer_val_1_ce1();
    void thread_Buffer_val_1_d1();
    void thread_Buffer_val_1_we1();
    void thread_Win_val_0_0_0_Win_val_0_0_1_fu_375_p3();
    void thread_Win_val_1_0_0_Win_val_1_0_1_fu_368_p3();
    void thread_Win_val_2_0_0_Win_val_2_0_1_fu_361_p3();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_197();
    void thread_ap_sig_bdd_207();
    void thread_ap_sig_bdd_22();
    void thread_ap_sig_bdd_45();
    void thread_ap_sig_bdd_54();
    void thread_ap_sig_bdd_69();
    void thread_ap_sig_bdd_83();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_2();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_nseq_ST_st2_fsm_1();
    void thread_current_dir_fu_382_p1();
    void thread_exitcond1_fu_192_p2();
    void thread_exitcond_fu_226_p2();
    void thread_ga_fu_583_p3();
    void thread_gb_fu_578_p3();
    void thread_grad_out_data_stream_V_read();
    void thread_i_V_fu_198_p2();
    void thread_icmp1_fu_276_p2();
    void thread_icmp_fu_214_p2();
    void thread_j_V_fu_232_p2();
    void thread_or_cond2_fu_321_p2();
    void thread_or_cond3_fu_600_p2();
    void thread_or_cond4_fu_301_p2();
    void thread_out_pixel_val_2_fu_571_p3();
    void thread_out_pixel_val_fu_604_p3();
    void thread_p_1_phi_fu_184_p4();
    void thread_sel_tmp1_fu_408_p2();
    void thread_sel_tmp2_fu_414_p2();
    void thread_supressed_data_stream_V_din();
    void thread_supressed_data_stream_V_write();
    void thread_tmp9_fu_282_p2();
    void thread_tmp_10_fu_402_p2();
    void thread_tmp_12_fu_386_p1();
    void thread_tmp_14_fu_588_p2();
    void thread_tmp_15_fu_594_p2();
    void thread_tmp_16_fu_295_p2();
    void thread_tmp_20_fu_266_p4();
    void thread_tmp_22_fu_430_p4();
    void thread_tmp_24_fu_440_p4();
    void thread_tmp_25_fu_450_p4();
    void thread_tmp_26_fu_460_p3();
    void thread_tmp_27_fu_468_p3();
    void thread_tmp_28_fu_486_p4();
    void thread_tmp_29_fu_496_p4();
    void thread_tmp_2_fu_220_p2();
    void thread_tmp_30_fu_506_p4();
    void thread_tmp_31_fu_516_p3();
    void thread_tmp_32_fu_524_p3();
    void thread_tmp_33_fu_611_p3();
    void thread_tmp_4_fu_238_p2();
    void thread_tmp_5_fu_396_p2();
    void thread_tmp_7_fu_252_p3();
    void thread_tmp_8_fu_260_p1();
    void thread_tmp_9_fu_329_p1();
    void thread_tmp_fu_204_p4();
    void thread_tmp_s_fu_390_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
