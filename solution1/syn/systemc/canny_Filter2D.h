// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _canny_Filter2D_HH_
#define _canny_Filter2D_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "canny_mux_3to1_sel2_8_1.h"
#include "canny_mul_2s_8ns_10_3.h"
#include "canny_mul_3s_8ns_11_3.h"
#include "canny_mul_3ns_8ns_11_3.h"
#include "canny_mul_4ns_8ns_12_3.h"
#include "canny_Filter2D_1_k_buf_0_val_3.h"

namespace ap_rtl {

struct canny_Filter2D : public sc_module {
    // Port declarations 18
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > p_src_data_stream_V_dout;
    sc_in< sc_logic > p_src_data_stream_V_empty_n;
    sc_out< sc_logic > p_src_data_stream_V_read;
    sc_out< sc_lv<8> > p_dst_data_stream_V_din;
    sc_in< sc_logic > p_dst_data_stream_V_full_n;
    sc_out< sc_logic > p_dst_data_stream_V_write;
    sc_in< sc_lv<2> > p_kernel_val_0_V_1_read;
    sc_in< sc_lv<2> > p_kernel_val_0_V_2_read;
    sc_in< sc_lv<3> > p_kernel_val_1_V_0_read;
    sc_in< sc_lv<4> > p_kernel_val_1_V_2_read;
    sc_in< sc_lv<2> > p_kernel_val_2_V_0_read;
    sc_in< sc_lv<3> > p_kernel_val_2_V_1_read;


    // Module declarations
    canny_Filter2D(sc_module_name name);
    SC_HAS_PROCESS(canny_Filter2D);

    ~canny_Filter2D();

    sc_trace_file* mVcdFile;

    canny_Filter2D_1_k_buf_0_val_3* k_buf_0_val_3_U;
    canny_Filter2D_1_k_buf_0_val_3* k_buf_0_val_4_U;
    canny_Filter2D_1_k_buf_0_val_3* k_buf_0_val_5_U;
    canny_mux_3to1_sel2_8_1<1,1,8,8,8,2,8>* canny_mux_3to1_sel2_8_1_U41;
    canny_mux_3to1_sel2_8_1<1,1,8,8,8,2,8>* canny_mux_3to1_sel2_8_1_U42;
    canny_mux_3to1_sel2_8_1<1,1,8,8,8,2,8>* canny_mux_3to1_sel2_8_1_U43;
    canny_mux_3to1_sel2_8_1<1,1,8,8,8,2,8>* canny_mux_3to1_sel2_8_1_U44;
    canny_mux_3to1_sel2_8_1<1,1,8,8,8,2,8>* canny_mux_3to1_sel2_8_1_U45;
    canny_mux_3to1_sel2_8_1<1,1,8,8,8,2,8>* canny_mux_3to1_sel2_8_1_U46;
    canny_mul_2s_8ns_10_3<1,3,2,8,10>* canny_mul_2s_8ns_10_3_U47;
    canny_mul_2s_8ns_10_3<1,3,2,8,10>* canny_mul_2s_8ns_10_3_U48;
    canny_mul_3s_8ns_11_3<1,3,3,8,11>* canny_mul_3s_8ns_11_3_U49;
    canny_mul_2s_8ns_10_3<1,3,2,8,10>* canny_mul_2s_8ns_10_3_U50;
    canny_mul_3ns_8ns_11_3<1,3,3,8,11>* canny_mul_3ns_8ns_11_3_U51;
    canny_mul_4ns_8ns_12_3<1,3,4,8,12>* canny_mul_4ns_8ns_12_3_U52;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_25;
    sc_signal< sc_lv<11> > p_027_0_i_reg_292;
    sc_signal< sc_lv<1> > tmp_38_fu_303_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_bdd_68;
    sc_signal< sc_lv<10> > OP2_V_0_1_cast_fu_309_p1;
    sc_signal< sc_lv<10> > OP2_V_0_1_cast_reg_1300;
    sc_signal< sc_lv<1> > tmp_s_phi_fu_274_p4;
    sc_signal< sc_lv<10> > OP2_V_0_2_cast_fu_312_p1;
    sc_signal< sc_lv<10> > OP2_V_0_2_cast_reg_1305;
    sc_signal< sc_lv<11> > OP2_V_1_cast_fu_315_p1;
    sc_signal< sc_lv<11> > OP2_V_1_cast_reg_1310;
    sc_signal< sc_lv<12> > OP2_V_1_2_cast_fu_318_p1;
    sc_signal< sc_lv<12> > OP2_V_1_2_cast_reg_1315;
    sc_signal< sc_lv<10> > OP2_V_2_cast_fu_321_p1;
    sc_signal< sc_lv<10> > OP2_V_2_cast_reg_1320;
    sc_signal< sc_lv<11> > OP2_V_2_1_cast_fu_324_p1;
    sc_signal< sc_lv<11> > OP2_V_2_1_cast_reg_1325;
    sc_signal< sc_lv<11> > i_V_fu_337_p2;
    sc_signal< sc_lv<11> > i_V_reg_1333;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_bdd_93;
    sc_signal< sc_lv<1> > tmp_reg_1338;
    sc_signal< sc_lv<1> > exitcond1_fu_331_p2;
    sc_signal< sc_lv<1> > tmp_114_reg_1342;
    sc_signal< sc_lv<1> > icmp_fu_369_p2;
    sc_signal< sc_lv<1> > icmp_reg_1347;
    sc_signal< sc_lv<1> > tmp_43_fu_375_p2;
    sc_signal< sc_lv<1> > tmp_43_reg_1352;
    sc_signal< sc_lv<1> > tmp_208_1_fu_381_p2;
    sc_signal< sc_lv<1> > tmp_208_1_reg_1356;
    sc_signal< sc_lv<1> > tmp_44_fu_387_p2;
    sc_signal< sc_lv<1> > tmp_44_reg_1360;
    sc_signal< sc_lv<1> > tmp_117_reg_1367;
    sc_signal< sc_lv<1> > icmp4_fu_417_p2;
    sc_signal< sc_lv<1> > icmp4_reg_1372;
    sc_signal< sc_lv<2> > tmp_120_reg_1377;
    sc_signal< sc_lv<2> > tmp_121_fu_459_p1;
    sc_signal< sc_lv<2> > tmp_121_reg_1382;
    sc_signal< sc_lv<1> > tmp_122_reg_1387;
    sc_signal< sc_lv<1> > tmp_125_reg_1392;
    sc_signal< sc_lv<2> > tmp_128_fu_515_p1;
    sc_signal< sc_lv<2> > tmp_128_reg_1397;
    sc_signal< sc_lv<2> > tmp_129_fu_519_p1;
    sc_signal< sc_lv<2> > tmp_129_reg_1402;
    sc_signal< sc_lv<2> > tmp_132_fu_523_p1;
    sc_signal< sc_lv<2> > tmp_132_reg_1407;
    sc_signal< sc_lv<2> > tmp_134_fu_533_p3;
    sc_signal< sc_lv<2> > tmp_134_reg_1412;
    sc_signal< sc_lv<2> > tmp_135_fu_541_p1;
    sc_signal< sc_lv<2> > tmp_135_reg_1417;
    sc_signal< sc_lv<2> > tmp_137_fu_551_p3;
    sc_signal< sc_lv<2> > tmp_137_reg_1422;
    sc_signal< sc_lv<2> > tmp_106_fu_586_p3;
    sc_signal< sc_lv<2> > tmp_106_reg_1427;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_bdd_141;
    sc_signal< sc_lv<2> > tmp_107_fu_593_p3;
    sc_signal< sc_lv<2> > tmp_107_reg_1432;
    sc_signal< sc_lv<2> > tmp_108_fu_598_p3;
    sc_signal< sc_lv<2> > tmp_108_reg_1437;
    sc_signal< sc_lv<2> > row_assign_s_fu_603_p2;
    sc_signal< sc_lv<2> > row_assign_s_reg_1442;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_bdd_157;
    sc_signal< sc_lv<2> > row_assign_10_1_t_fu_608_p2;
    sc_signal< sc_lv<2> > row_assign_10_1_t_reg_1447;
    sc_signal< sc_lv<2> > row_assign_10_2_t_fu_613_p2;
    sc_signal< sc_lv<2> > row_assign_10_2_t_reg_1452;
    sc_signal< sc_lv<1> > exitcond_fu_622_p2;
    sc_signal< sc_lv<1> > exitcond_reg_1457;
    sc_signal< sc_logic > ap_sig_cseq_ST_pp0_stg0_fsm_5;
    sc_signal< bool > ap_sig_bdd_171;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it0;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it1;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_1457_pp0_it2;
    sc_signal< sc_lv<1> > or_cond_i_i_reg_1499;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond_i_i_reg_1499_pp0_it2;
    sc_signal< bool > ap_sig_bdd_196;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it3;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it4;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it5;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it6;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it7;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it8;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it9;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it10;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it11;
    sc_signal< sc_lv<1> > or_cond_i_reg_1495;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond_i_reg_1495_pp0_it11;
    sc_signal< bool > ap_sig_bdd_222;
    sc_signal< sc_logic > ap_reg_ppiten_pp0_it12;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_1457_pp0_it1;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_1457_pp0_it3;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_1457_pp0_it4;
    sc_signal< sc_lv<1> > ap_reg_ppstg_exitcond_reg_1457_pp0_it5;
    sc_signal< sc_lv<11> > j_V_fu_628_p2;
    sc_signal< sc_lv<12> > ImagLoc_x_fu_650_p2;
    sc_signal< sc_lv<12> > ImagLoc_x_reg_1466;
    sc_signal< sc_lv<1> > tmp_139_reg_1471;
    sc_signal< sc_lv<1> > icmp7_fu_674_p2;
    sc_signal< sc_lv<1> > icmp7_reg_1477;
    sc_signal< sc_lv<12> > p_p2_i_i_fu_698_p3;
    sc_signal< sc_lv<12> > p_p2_i_i_reg_1484;
    sc_signal< sc_lv<12> > ap_reg_ppstg_p_p2_i_i_reg_1484_pp0_it1;
    sc_signal< sc_lv<2> > tmp_142_reg_1490;
    sc_signal< sc_lv<1> > or_cond_i_fu_716_p2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond_i_reg_1495_pp0_it1;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond_i_reg_1495_pp0_it2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond_i_reg_1495_pp0_it3;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond_i_reg_1495_pp0_it4;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond_i_reg_1495_pp0_it5;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond_i_reg_1495_pp0_it6;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond_i_reg_1495_pp0_it7;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond_i_reg_1495_pp0_it8;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond_i_reg_1495_pp0_it9;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond_i_reg_1495_pp0_it10;
    sc_signal< sc_lv<1> > or_cond_i_i_fu_729_p2;
    sc_signal< sc_lv<1> > ap_reg_ppstg_or_cond_i_i_reg_1499_pp0_it3;
    sc_signal< sc_lv<13> > sel_tmp_fu_748_p3;
    sc_signal< sc_lv<13> > sel_tmp_reg_1503;
    sc_signal< sc_lv<1> > sel_tmp8_fu_766_p2;
    sc_signal< sc_lv<1> > sel_tmp8_reg_1508;
    sc_signal< sc_lv<1> > brmerge_fu_772_p2;
    sc_signal< sc_lv<1> > brmerge_reg_1513;
    sc_signal< sc_lv<1> > ap_reg_ppstg_brmerge_reg_1513_pp0_it2;
    sc_signal< sc_lv<2> > tmp_143_fu_789_p1;
    sc_signal< sc_lv<2> > tmp_143_reg_1520;
    sc_signal< sc_lv<10> > k_buf_0_val_3_addr_reg_1525;
    sc_signal< sc_lv<10> > k_buf_0_val_4_addr_reg_1531;
    sc_signal< sc_lv<10> > ap_reg_ppstg_k_buf_0_val_4_addr_reg_1531_pp0_it3;
    sc_signal< sc_lv<10> > k_buf_0_val_5_addr_reg_1537;
    sc_signal< sc_lv<10> > ap_reg_ppstg_k_buf_0_val_5_addr_reg_1537_pp0_it3;
    sc_signal< sc_lv<8> > k_buf_0_val_3_q0;
    sc_signal< sc_lv<8> > k_buf_0_val_3_load_reg_1543;
    sc_signal< sc_lv<8> > col_buf_0_val_0_0_fu_835_p3;
    sc_signal< sc_lv<8> > col_buf_0_val_0_0_reg_1548;
    sc_signal< sc_lv<8> > k_buf_0_val_4_q0;
    sc_signal< sc_lv<8> > k_buf_0_val_4_load_reg_1556;
    sc_signal< sc_lv<8> > col_buf_0_val_1_0_fu_854_p3;
    sc_signal< sc_lv<8> > col_buf_0_val_1_0_reg_1561;
    sc_signal< sc_lv<8> > col_buf_0_val_2_0_fu_873_p3;
    sc_signal< sc_lv<8> > col_buf_0_val_2_0_reg_1569;
    sc_signal< sc_lv<8> > tmp_149_reg_1577;
    sc_signal< sc_lv<8> > src_kernel_win_0_val_0_0_fu_924_p3;
    sc_signal< sc_lv<8> > src_kernel_win_0_val_0_0_reg_1583;
    sc_signal< sc_lv<8> > ap_reg_ppstg_src_kernel_win_0_val_0_0_reg_1583_pp0_it5;
    sc_signal< sc_lv<8> > ap_reg_ppstg_src_kernel_win_0_val_0_0_reg_1583_pp0_it6;
    sc_signal< sc_lv<8> > ap_reg_ppstg_src_kernel_win_0_val_0_0_reg_1583_pp0_it7;
    sc_signal< sc_lv<8> > ap_reg_ppstg_src_kernel_win_0_val_0_0_reg_1583_pp0_it8;
    sc_signal< sc_lv<8> > src_kernel_win_0_val_1_0_fu_938_p3;
    sc_signal< sc_lv<8> > src_kernel_win_0_val_1_0_reg_1589;
    sc_signal< sc_lv<8> > ap_reg_ppstg_src_kernel_win_0_val_1_0_reg_1589_pp0_it5;
    sc_signal< sc_lv<8> > ap_reg_ppstg_src_kernel_win_0_val_1_0_reg_1589_pp0_it6;
    sc_signal< sc_lv<8> > src_kernel_win_0_val_2_0_fu_952_p3;
    sc_signal< sc_lv<8> > src_kernel_win_0_val_2_0_reg_1595;
    sc_signal< sc_lv<8> > src_kernel_win_0_val_2_1_lo_2_reg_1611;
    sc_signal< sc_lv<8> > src_kernel_win_0_val_2_1_2_s_reg_1616;
    sc_signal< sc_lv<9> > p_Val2_s_fu_1055_p2;
    sc_signal< sc_lv<9> > p_Val2_s_reg_1636;
    sc_signal< sc_lv<10> > grp_fu_965_p2;
    sc_signal< sc_lv<10> > p_Val2_0_1_reg_1641;
    sc_signal< sc_lv<10> > grp_fu_973_p2;
    sc_signal< sc_lv<10> > p_Val2_0_2_reg_1646;
    sc_signal< sc_lv<11> > p_Val2_13_0_2_fu_1084_p2;
    sc_signal< sc_lv<11> > p_Val2_13_0_2_reg_1656;
    sc_signal< sc_lv<11> > grp_fu_1001_p2;
    sc_signal< sc_lv<11> > p_Val2_1_reg_1661;
    sc_signal< sc_lv<10> > grp_fu_1010_p2;
    sc_signal< sc_lv<10> > p_Val2_2_reg_1666;
    sc_signal< sc_lv<11> > grp_fu_1019_p2;
    sc_signal< sc_lv<11> > p_Val2_2_1_reg_1671;
    sc_signal< sc_lv<12> > p_Val2_13_1_1_fu_1096_p2;
    sc_signal< sc_lv<12> > p_Val2_13_1_1_reg_1676;
    sc_signal< sc_lv<12> > grp_fu_1064_p2;
    sc_signal< sc_lv<12> > p_Val2_1_2_reg_1681;
    sc_signal< sc_lv<11> > tmp3_fu_1114_p2;
    sc_signal< sc_lv<11> > tmp3_reg_1686;
    sc_signal< sc_lv<1> > isneg_reg_1691;
    sc_signal< sc_lv<1> > ap_reg_ppstg_isneg_reg_1691_pp0_it11;
    sc_signal< sc_lv<8> > p_Val2_5_fu_1140_p1;
    sc_signal< sc_lv<8> > p_Val2_5_reg_1697;
    sc_signal< sc_lv<8> > ap_reg_ppstg_p_Val2_5_reg_1697_pp0_it11;
    sc_signal< sc_lv<4> > tmp_70_reg_1702;
    sc_signal< sc_lv<1> > tmp_i_i_fu_1154_p2;
    sc_signal< sc_lv<1> > tmp_i_i_reg_1707;
    sc_signal< sc_lv<1> > overflow_fu_1164_p2;
    sc_signal< sc_lv<1> > overflow_reg_1712;
    sc_signal< sc_lv<10> > k_buf_0_val_3_address0;
    sc_signal< sc_logic > k_buf_0_val_3_ce0;
    sc_signal< sc_lv<10> > k_buf_0_val_3_address1;
    sc_signal< sc_logic > k_buf_0_val_3_ce1;
    sc_signal< sc_logic > k_buf_0_val_3_we1;
    sc_signal< sc_lv<8> > k_buf_0_val_3_d1;
    sc_signal< sc_lv<10> > k_buf_0_val_4_address0;
    sc_signal< sc_logic > k_buf_0_val_4_ce0;
    sc_signal< sc_lv<10> > k_buf_0_val_4_address1;
    sc_signal< sc_logic > k_buf_0_val_4_ce1;
    sc_signal< sc_logic > k_buf_0_val_4_we1;
    sc_signal< sc_lv<8> > k_buf_0_val_4_d1;
    sc_signal< sc_lv<10> > k_buf_0_val_5_address0;
    sc_signal< sc_logic > k_buf_0_val_5_ce0;
    sc_signal< sc_lv<8> > k_buf_0_val_5_q0;
    sc_signal< sc_lv<10> > k_buf_0_val_5_address1;
    sc_signal< sc_logic > k_buf_0_val_5_ce1;
    sc_signal< sc_logic > k_buf_0_val_5_we1;
    sc_signal< sc_lv<8> > k_buf_0_val_5_d1;
    sc_signal< sc_lv<1> > tmp_s_reg_270;
    sc_signal< sc_lv<11> > p_014_0_i_reg_281;
    sc_signal< sc_logic > ap_sig_cseq_ST_st19_fsm_6;
    sc_signal< bool > ap_sig_bdd_460;
    sc_signal< sc_lv<64> > tmp_60_fu_793_p1;
    sc_signal< sc_lv<8> > src_kernel_win_0_val_0_1_fu_130;
    sc_signal< sc_lv<8> > src_kernel_win_0_val_0_1_2_fu_134;
    sc_signal< sc_lv<8> > src_kernel_win_0_val_1_1_fu_138;
    sc_signal< sc_lv<8> > src_kernel_win_0_val_1_1_2_fu_142;
    sc_signal< sc_lv<8> > src_kernel_win_0_val_2_1_fu_146;
    sc_signal< sc_lv<8> > src_kernel_win_0_val_2_1_2_fu_150;
    sc_signal< sc_lv<8> > right_border_buf_0_val_0_1_fu_154;
    sc_signal< sc_lv<8> > right_border_buf_0_val_0_1_2_fu_158;
    sc_signal< sc_lv<8> > right_border_buf_0_val_2_1_fu_162;
    sc_signal< sc_lv<8> > right_border_buf_0_val_1_1_fu_166;
    sc_signal< sc_lv<8> > right_border_buf_0_val_1_1_2_fu_170;
    sc_signal< sc_lv<8> > right_border_buf_0_val_2_1_3_fu_174;
    sc_signal< sc_lv<10> > tmp_115_fu_359_p4;
    sc_signal< sc_lv<12> > tmp_50_cast_cast_fu_327_p1;
    sc_signal< sc_lv<12> > tmp_45_fu_393_p2;
    sc_signal< sc_lv<2> > tmp_118_fu_407_p4;
    sc_signal< sc_lv<11> > p_assign_7_fu_431_p2;
    sc_signal< sc_lv<1> > tmp_119_fu_423_p3;
    sc_signal< sc_lv<12> > p_assign_7_cast_fu_437_p1;
    sc_signal< sc_lv<12> > p_p2_i423_i_fu_441_p3;
    sc_signal< sc_lv<11> > p_assign_6_1_fu_463_p2;
    sc_signal< sc_lv<11> > p_assign_6_2_fu_489_p2;
    sc_signal< sc_lv<2> > tmp_124_fu_485_p1;
    sc_signal< sc_lv<1> > tmp_123_fu_477_p3;
    sc_signal< sc_lv<2> > tmp_133_fu_527_p2;
    sc_signal< sc_lv<2> > tmp_127_fu_511_p1;
    sc_signal< sc_lv<1> > tmp_126_fu_503_p3;
    sc_signal< sc_lv<2> > tmp_136_fu_545_p2;
    sc_signal< sc_lv<1> > rev_fu_559_p2;
    sc_signal< sc_lv<1> > icmp5_fu_569_p2;
    sc_signal< sc_lv<2> > tmp_130_fu_574_p2;
    sc_signal< sc_lv<1> > or_cond_i422_i_fu_564_p2;
    sc_signal< sc_lv<2> > tmp_131_fu_579_p3;
    sc_signal< sc_lv<10> > tmp_138_fu_634_p4;
    sc_signal< sc_lv<12> > tmp_53_cast_cast_fu_618_p1;
    sc_signal< sc_lv<2> > tmp_140_fu_664_p4;
    sc_signal< sc_lv<11> > p_assign_1_fu_688_p2;
    sc_signal< sc_lv<1> > tmp_141_fu_680_p3;
    sc_signal< sc_lv<12> > p_assign_1_cast_fu_694_p1;
    sc_signal< sc_lv<1> > icmp6_fu_644_p2;
    sc_signal< sc_lv<1> > rev7_fu_724_p2;
    sc_signal< sc_lv<12> > p_assign_2_fu_739_p2;
    sc_signal< sc_lv<13> > ImagLoc_x_cast_fu_721_p1;
    sc_signal< sc_lv<13> > p_assign_2_cast_fu_744_p1;
    sc_signal< sc_lv<1> > icmp54_not_fu_756_p2;
    sc_signal< sc_lv<1> > icmp8_fu_734_p2;
    sc_signal< sc_lv<1> > sel_tmp7_fu_761_p2;
    sc_signal< sc_lv<13> > p_p2_i_i_cast_cast8_fu_776_p1;
    sc_signal< sc_lv<13> > x_fu_779_p3;
    sc_signal< sc_lv<32> > col_assign_cast_fu_785_p1;
    sc_signal< sc_lv<2> > col_assign_3_t_fu_818_p2;
    sc_signal< sc_lv<8> > tmp_61_fu_823_p5;
    sc_signal< sc_lv<8> > tmp_62_fu_842_p5;
    sc_signal< sc_lv<8> > tmp_63_fu_861_p5;
    sc_signal< sc_lv<8> > tmp_65_fu_916_p5;
    sc_signal< sc_lv<8> > tmp_67_fu_930_p5;
    sc_signal< sc_lv<8> > tmp_69_fu_944_p5;
    sc_signal< sc_lv<2> > grp_fu_965_p0;
    sc_signal< sc_lv<8> > grp_fu_965_p1;
    sc_signal< sc_lv<2> > grp_fu_973_p0;
    sc_signal< sc_lv<8> > grp_fu_973_p1;
    sc_signal< sc_lv<3> > grp_fu_1001_p0;
    sc_signal< sc_lv<8> > grp_fu_1001_p1;
    sc_signal< sc_lv<2> > grp_fu_1010_p0;
    sc_signal< sc_lv<8> > grp_fu_1010_p1;
    sc_signal< sc_lv<3> > grp_fu_1019_p0;
    sc_signal< sc_lv<8> > grp_fu_1019_p1;
    sc_signal< sc_lv<9> > OP1_V_0_cast_fu_1052_p1;
    sc_signal< sc_lv<4> > grp_fu_1064_p0;
    sc_signal< sc_lv<8> > grp_fu_1064_p1;
    sc_signal< sc_lv<11> > tmp_252_0_cast_fu_1069_p1;
    sc_signal< sc_lv<11> > tmp_252_0_1_cast_fu_1072_p1;
    sc_signal< sc_lv<11> > tmp_252_0_2_cast_cast_fu_1081_p1;
    sc_signal< sc_lv<11> > p_Val2_13_0_1_fu_1075_p2;
    sc_signal< sc_lv<12> > tmp_252_1_cast_cast_fu_1093_p1;
    sc_signal< sc_lv<12> > p_Val2_13_0_2_cast6_fu_1090_p1;
    sc_signal< sc_lv<10> > tmp_252_2_2_cast_cast_cast_fu_1102_p1;
    sc_signal< sc_lv<10> > tmp4_fu_1105_p2;
    sc_signal< sc_lv<11> > tmp4_cast_fu_1110_p1;
    sc_signal< sc_lv<12> > tmp2_fu_1119_p2;
    sc_signal< sc_lv<12> > tmp3_cast_fu_1123_p1;
    sc_signal< sc_lv<12> > p_Val2_4_fu_1126_p2;
    sc_signal< sc_lv<1> > not_i_i_i_fu_1159_p2;
    sc_signal< sc_lv<1> > tmp_i_i_78_fu_1177_p2;
    sc_signal< sc_lv<8> > p_mux_i_i_cast_fu_1170_p3;
    sc_signal< sc_logic > grp_fu_965_ce;
    sc_signal< sc_logic > grp_fu_973_ce;
    sc_signal< sc_logic > grp_fu_1001_ce;
    sc_signal< sc_logic > grp_fu_1010_ce;
    sc_signal< sc_logic > grp_fu_1019_ce;
    sc_signal< sc_logic > grp_fu_1064_ce;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    sc_signal< sc_lv<11> > grp_fu_1001_p10;
    sc_signal< sc_lv<10> > grp_fu_1010_p10;
    sc_signal< sc_lv<11> > grp_fu_1019_p10;
    sc_signal< sc_lv<12> > grp_fu_1064_p10;
    sc_signal< sc_lv<10> > grp_fu_965_p10;
    sc_signal< sc_lv<10> > grp_fu_973_p10;
    sc_signal< bool > ap_sig_bdd_1118;
    sc_signal< bool > ap_sig_bdd_1120;
    sc_signal< bool > ap_sig_bdd_1117;
    sc_signal< bool > ap_sig_bdd_1123;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_st1_fsm_0;
    static const sc_lv<7> ap_ST_st2_fsm_1;
    static const sc_lv<7> ap_ST_st3_fsm_2;
    static const sc_lv<7> ap_ST_st4_fsm_3;
    static const sc_lv<7> ap_ST_st5_fsm_4;
    static const sc_lv<7> ap_ST_pp0_stg0_fsm_5;
    static const sc_lv<7> ap_ST_st19_fsm_6;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<11> ap_const_lv11_402;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<11> ap_const_lv11_400;
    static const sc_lv<12> ap_const_lv12_FFF;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<11> ap_const_lv11_7FE;
    static const sc_lv<11> ap_const_lv11_7FD;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<12> ap_const_lv12_7FE;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<8> ap_const_lv8_FF;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ImagLoc_x_cast_fu_721_p1();
    void thread_ImagLoc_x_fu_650_p2();
    void thread_OP1_V_0_cast_fu_1052_p1();
    void thread_OP2_V_0_1_cast_fu_309_p1();
    void thread_OP2_V_0_2_cast_fu_312_p1();
    void thread_OP2_V_1_2_cast_fu_318_p1();
    void thread_OP2_V_1_cast_fu_315_p1();
    void thread_OP2_V_2_1_cast_fu_324_p1();
    void thread_OP2_V_2_cast_fu_321_p1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_bdd_1117();
    void thread_ap_sig_bdd_1118();
    void thread_ap_sig_bdd_1120();
    void thread_ap_sig_bdd_1123();
    void thread_ap_sig_bdd_141();
    void thread_ap_sig_bdd_157();
    void thread_ap_sig_bdd_171();
    void thread_ap_sig_bdd_196();
    void thread_ap_sig_bdd_222();
    void thread_ap_sig_bdd_25();
    void thread_ap_sig_bdd_460();
    void thread_ap_sig_bdd_68();
    void thread_ap_sig_bdd_93();
    void thread_ap_sig_cseq_ST_pp0_stg0_fsm_5();
    void thread_ap_sig_cseq_ST_st19_fsm_6();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_brmerge_fu_772_p2();
    void thread_col_assign_3_t_fu_818_p2();
    void thread_col_assign_cast_fu_785_p1();
    void thread_col_buf_0_val_0_0_fu_835_p3();
    void thread_col_buf_0_val_1_0_fu_854_p3();
    void thread_col_buf_0_val_2_0_fu_873_p3();
    void thread_exitcond1_fu_331_p2();
    void thread_exitcond_fu_622_p2();
    void thread_grp_fu_1001_ce();
    void thread_grp_fu_1001_p0();
    void thread_grp_fu_1001_p1();
    void thread_grp_fu_1001_p10();
    void thread_grp_fu_1010_ce();
    void thread_grp_fu_1010_p0();
    void thread_grp_fu_1010_p1();
    void thread_grp_fu_1010_p10();
    void thread_grp_fu_1019_ce();
    void thread_grp_fu_1019_p0();
    void thread_grp_fu_1019_p1();
    void thread_grp_fu_1019_p10();
    void thread_grp_fu_1064_ce();
    void thread_grp_fu_1064_p0();
    void thread_grp_fu_1064_p1();
    void thread_grp_fu_1064_p10();
    void thread_grp_fu_965_ce();
    void thread_grp_fu_965_p0();
    void thread_grp_fu_965_p1();
    void thread_grp_fu_965_p10();
    void thread_grp_fu_973_ce();
    void thread_grp_fu_973_p0();
    void thread_grp_fu_973_p1();
    void thread_grp_fu_973_p10();
    void thread_i_V_fu_337_p2();
    void thread_icmp4_fu_417_p2();
    void thread_icmp54_not_fu_756_p2();
    void thread_icmp5_fu_569_p2();
    void thread_icmp6_fu_644_p2();
    void thread_icmp7_fu_674_p2();
    void thread_icmp8_fu_734_p2();
    void thread_icmp_fu_369_p2();
    void thread_j_V_fu_628_p2();
    void thread_k_buf_0_val_3_address0();
    void thread_k_buf_0_val_3_address1();
    void thread_k_buf_0_val_3_ce0();
    void thread_k_buf_0_val_3_ce1();
    void thread_k_buf_0_val_3_d1();
    void thread_k_buf_0_val_3_we1();
    void thread_k_buf_0_val_4_address0();
    void thread_k_buf_0_val_4_address1();
    void thread_k_buf_0_val_4_ce0();
    void thread_k_buf_0_val_4_ce1();
    void thread_k_buf_0_val_4_d1();
    void thread_k_buf_0_val_4_we1();
    void thread_k_buf_0_val_5_address0();
    void thread_k_buf_0_val_5_address1();
    void thread_k_buf_0_val_5_ce0();
    void thread_k_buf_0_val_5_ce1();
    void thread_k_buf_0_val_5_d1();
    void thread_k_buf_0_val_5_we1();
    void thread_not_i_i_i_fu_1159_p2();
    void thread_or_cond_i422_i_fu_564_p2();
    void thread_or_cond_i_fu_716_p2();
    void thread_or_cond_i_i_fu_729_p2();
    void thread_overflow_fu_1164_p2();
    void thread_p_Val2_13_0_1_fu_1075_p2();
    void thread_p_Val2_13_0_2_cast6_fu_1090_p1();
    void thread_p_Val2_13_0_2_fu_1084_p2();
    void thread_p_Val2_13_1_1_fu_1096_p2();
    void thread_p_Val2_4_fu_1126_p2();
    void thread_p_Val2_5_fu_1140_p1();
    void thread_p_Val2_s_fu_1055_p2();
    void thread_p_assign_1_cast_fu_694_p1();
    void thread_p_assign_1_fu_688_p2();
    void thread_p_assign_2_cast_fu_744_p1();
    void thread_p_assign_2_fu_739_p2();
    void thread_p_assign_6_1_fu_463_p2();
    void thread_p_assign_6_2_fu_489_p2();
    void thread_p_assign_7_cast_fu_437_p1();
    void thread_p_assign_7_fu_431_p2();
    void thread_p_dst_data_stream_V_din();
    void thread_p_dst_data_stream_V_write();
    void thread_p_mux_i_i_cast_fu_1170_p3();
    void thread_p_p2_i423_i_fu_441_p3();
    void thread_p_p2_i_i_cast_cast8_fu_776_p1();
    void thread_p_p2_i_i_fu_698_p3();
    void thread_p_src_data_stream_V_read();
    void thread_rev7_fu_724_p2();
    void thread_rev_fu_559_p2();
    void thread_row_assign_10_1_t_fu_608_p2();
    void thread_row_assign_10_2_t_fu_613_p2();
    void thread_row_assign_s_fu_603_p2();
    void thread_sel_tmp7_fu_761_p2();
    void thread_sel_tmp8_fu_766_p2();
    void thread_sel_tmp_fu_748_p3();
    void thread_src_kernel_win_0_val_0_0_fu_924_p3();
    void thread_src_kernel_win_0_val_1_0_fu_938_p3();
    void thread_src_kernel_win_0_val_2_0_fu_952_p3();
    void thread_tmp2_fu_1119_p2();
    void thread_tmp3_cast_fu_1123_p1();
    void thread_tmp3_fu_1114_p2();
    void thread_tmp4_cast_fu_1110_p1();
    void thread_tmp4_fu_1105_p2();
    void thread_tmp_106_fu_586_p3();
    void thread_tmp_107_fu_593_p3();
    void thread_tmp_108_fu_598_p3();
    void thread_tmp_115_fu_359_p4();
    void thread_tmp_118_fu_407_p4();
    void thread_tmp_119_fu_423_p3();
    void thread_tmp_121_fu_459_p1();
    void thread_tmp_123_fu_477_p3();
    void thread_tmp_124_fu_485_p1();
    void thread_tmp_126_fu_503_p3();
    void thread_tmp_127_fu_511_p1();
    void thread_tmp_128_fu_515_p1();
    void thread_tmp_129_fu_519_p1();
    void thread_tmp_130_fu_574_p2();
    void thread_tmp_131_fu_579_p3();
    void thread_tmp_132_fu_523_p1();
    void thread_tmp_133_fu_527_p2();
    void thread_tmp_134_fu_533_p3();
    void thread_tmp_135_fu_541_p1();
    void thread_tmp_136_fu_545_p2();
    void thread_tmp_137_fu_551_p3();
    void thread_tmp_138_fu_634_p4();
    void thread_tmp_140_fu_664_p4();
    void thread_tmp_141_fu_680_p3();
    void thread_tmp_143_fu_789_p1();
    void thread_tmp_208_1_fu_381_p2();
    void thread_tmp_252_0_1_cast_fu_1072_p1();
    void thread_tmp_252_0_2_cast_cast_fu_1081_p1();
    void thread_tmp_252_0_cast_fu_1069_p1();
    void thread_tmp_252_1_cast_cast_fu_1093_p1();
    void thread_tmp_252_2_2_cast_cast_cast_fu_1102_p1();
    void thread_tmp_38_fu_303_p2();
    void thread_tmp_43_fu_375_p2();
    void thread_tmp_44_fu_387_p2();
    void thread_tmp_45_fu_393_p2();
    void thread_tmp_50_cast_cast_fu_327_p1();
    void thread_tmp_53_cast_cast_fu_618_p1();
    void thread_tmp_60_fu_793_p1();
    void thread_tmp_i_i_78_fu_1177_p2();
    void thread_tmp_i_i_fu_1154_p2();
    void thread_tmp_s_phi_fu_274_p4();
    void thread_x_fu_779_p3();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
