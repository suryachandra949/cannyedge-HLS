// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module canny_Duplicate_1024_1024_0_0_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        src_data_stream_V_dout,
        src_data_stream_V_empty_n,
        src_data_stream_V_read,
        dst1_data_stream_V_din,
        dst1_data_stream_V_full_n,
        dst1_data_stream_V_write,
        dst2_data_stream_V_din,
        dst2_data_stream_V_full_n,
        dst2_data_stream_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 4'b1;
parameter    ap_ST_st2_fsm_1 = 4'b10;
parameter    ap_ST_pp0_stg0_fsm_2 = 4'b100;
parameter    ap_ST_st5_fsm_3 = 4'b1000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv11_0 = 11'b00000000000;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv11_400 = 11'b10000000000;
parameter    ap_const_lv11_1 = 11'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [7:0] src_data_stream_V_dout;
input   src_data_stream_V_empty_n;
output   src_data_stream_V_read;
output  [7:0] dst1_data_stream_V_din;
input   dst1_data_stream_V_full_n;
output   dst1_data_stream_V_write;
output  [7:0] dst2_data_stream_V_din;
input   dst2_data_stream_V_full_n;
output   dst2_data_stream_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg src_data_stream_V_read;
reg dst1_data_stream_V_write;
reg dst2_data_stream_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm = 4'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_23;
reg   [10:0] p_6_reg_83;
wire   [0:0] exitcond2_fu_94_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_51;
wire   [10:0] i_V_fu_100_p2;
reg   [10:0] i_V_reg_122;
wire   [0:0] exitcond_fu_106_p2;
reg   [0:0] exitcond_reg_127;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_2;
reg    ap_sig_bdd_62;
reg    ap_reg_ppiten_pp0_it0 = 1'b0;
reg    ap_sig_bdd_76;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [10:0] j_V_fu_112_p2;
reg   [10:0] p_s_reg_72;
reg    ap_sig_bdd_99;
reg    ap_sig_cseq_ST_st5_fsm_3;
reg    ap_sig_bdd_107;
reg   [3:0] ap_NS_fsm;




always @ (posedge ap_clk) begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond2_fu_94_p2 == ap_const_lv1_0))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

always @ (posedge ap_clk) begin : ap_ret_ap_reg_ppiten_pp0_it0
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_76 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond_fu_106_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond2_fu_94_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
        end
    end
end

always @ (posedge ap_clk) begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_76 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & (exitcond_fu_106_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond2_fu_94_p2 == ap_const_lv1_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_76 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond_fu_106_p2 == ap_const_lv1_0)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_76 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & (exitcond_fu_106_p2 == ap_const_lv1_0))) begin
        p_6_reg_83 <= j_V_fu_112_p2;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond2_fu_94_p2 == ap_const_lv1_0))) begin
        p_6_reg_83 <= ap_const_lv11_0;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_3)) begin
        p_s_reg_72 <= i_V_reg_122;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_99)) begin
        p_s_reg_72 <= ap_const_lv11_0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & ~(ap_sig_bdd_76 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        exitcond_reg_127 <= exitcond_fu_106_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        i_V_reg_122 <= i_V_fu_100_p2;
    end
end

always @ (ap_done_reg or exitcond2_fu_94_p2 or ap_sig_cseq_ST_st2_fsm_1) begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond2_fu_94_p2 == ap_const_lv1_0)))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0) begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

always @ (exitcond2_fu_94_p2 or ap_sig_cseq_ST_st2_fsm_1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond2_fu_94_p2 == ap_const_lv1_0))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_62) begin
    if (ap_sig_bdd_62) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_2 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_23) begin
    if (ap_sig_bdd_23) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_51) begin
    if (ap_sig_bdd_51) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_107) begin
    if (ap_sig_bdd_107) begin
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_0;
    end
end

always @ (exitcond_reg_127 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_76 or ap_reg_ppiten_pp0_it1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_reg_127 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_76 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        dst1_data_stream_V_write = ap_const_logic_1;
    end else begin
        dst1_data_stream_V_write = ap_const_logic_0;
    end
end

always @ (exitcond_reg_127 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_76 or ap_reg_ppiten_pp0_it1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_reg_127 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_76 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        dst2_data_stream_V_write = ap_const_logic_1;
    end else begin
        dst2_data_stream_V_write = ap_const_logic_0;
    end
end

always @ (exitcond_reg_127 or ap_sig_cseq_ST_pp0_stg0_fsm_2 or ap_sig_bdd_76 or ap_reg_ppiten_pp0_it1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_2) & (exitcond_reg_127 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_76 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        src_data_stream_V_read = ap_const_logic_1;
    end else begin
        src_data_stream_V_read = ap_const_logic_0;
    end
end
always @ (ap_CS_fsm or exitcond2_fu_94_p2 or exitcond_fu_106_p2 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_76 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_99) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~ap_sig_bdd_99) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            if (~(exitcond2_fu_94_p2 == ap_const_lv1_0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_pp0_stg0_fsm_2 : 
        begin
            if (~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_76 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond_fu_106_p2 == ap_const_lv1_0))) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end else if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_76 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)) & ~(exitcond_fu_106_p2 == ap_const_lv1_0))) begin
                ap_NS_fsm = ap_ST_st5_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
            end
        end
        ap_ST_st5_fsm_3 : 
        begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end



always @ (ap_CS_fsm) begin
    ap_sig_bdd_107 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_23 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_51 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_62 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end


always @ (src_data_stream_V_empty_n or dst1_data_stream_V_full_n or dst2_data_stream_V_full_n or exitcond_reg_127) begin
    ap_sig_bdd_76 = (((src_data_stream_V_empty_n == ap_const_logic_0) & (exitcond_reg_127 == ap_const_lv1_0)) | ((exitcond_reg_127 == ap_const_lv1_0) & (dst1_data_stream_V_full_n == ap_const_logic_0)) | ((exitcond_reg_127 == ap_const_lv1_0) & (dst2_data_stream_V_full_n == ap_const_logic_0)));
end


always @ (ap_start or ap_done_reg) begin
    ap_sig_bdd_99 = ((ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

assign dst1_data_stream_V_din = src_data_stream_V_dout;

assign dst2_data_stream_V_din = src_data_stream_V_dout;

assign exitcond2_fu_94_p2 = (p_s_reg_72 == ap_const_lv11_400? 1'b1: 1'b0);

assign exitcond_fu_106_p2 = (p_6_reg_83 == ap_const_lv11_400? 1'b1: 1'b0);

assign i_V_fu_100_p2 = (p_s_reg_72 + ap_const_lv11_1);

assign j_V_fu_112_p2 = (p_6_reg_83 + ap_const_lv11_1);


endmodule //canny_Duplicate_1024_1024_0_0_s

