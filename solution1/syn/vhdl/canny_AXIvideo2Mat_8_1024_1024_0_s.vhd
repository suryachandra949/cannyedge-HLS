-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.4
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity canny_AXIvideo2Mat_8_1024_1024_0_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    input_stream_TDATA : IN STD_LOGIC_VECTOR (7 downto 0);
    input_stream_TVALID : IN STD_LOGIC;
    input_stream_TREADY : OUT STD_LOGIC;
    input_stream_TKEEP : IN STD_LOGIC_VECTOR (0 downto 0);
    input_stream_TSTRB : IN STD_LOGIC_VECTOR (0 downto 0);
    input_stream_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    input_stream_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    input_stream_TID : IN STD_LOGIC_VECTOR (0 downto 0);
    input_stream_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
    img_rows_V_dout : IN STD_LOGIC_VECTOR (11 downto 0);
    img_rows_V_empty_n : IN STD_LOGIC;
    img_rows_V_read : OUT STD_LOGIC;
    img_cols_V_dout : IN STD_LOGIC_VECTOR (11 downto 0);
    img_cols_V_empty_n : IN STD_LOGIC;
    img_cols_V_read : OUT STD_LOGIC;
    img_data_stream_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    img_data_stream_V_full_n : IN STD_LOGIC;
    img_data_stream_V_write : OUT STD_LOGIC;
    img_rows_V_out_din : OUT STD_LOGIC_VECTOR (11 downto 0);
    img_rows_V_out_full_n : IN STD_LOGIC;
    img_rows_V_out_write : OUT STD_LOGIC;
    img_cols_V_out_din : OUT STD_LOGIC_VECTOR (11 downto 0);
    img_cols_V_out_full_n : IN STD_LOGIC;
    img_cols_V_out_write : OUT STD_LOGIC );
end;


architecture behav of canny_AXIvideo2Mat_8_1024_1024_0_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_pp1_stg0_fsm_4 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_st7_fsm_5 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_st8_fsm_6 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_true : BOOLEAN := true;

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_26 : BOOLEAN;
    signal eol_reg_170 : STD_LOGIC_VECTOR (0 downto 0);
    signal axi_data_V_1_i_reg_181 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_7_i_reg_192 : STD_LOGIC_VECTOR (10 downto 0);
    signal eol_i_reg_203 : STD_LOGIC_VECTOR (0 downto 0);
    signal axi_last_V_2_i_reg_215 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Val2_s_reg_228 : STD_LOGIC_VECTOR (7 downto 0);
    signal rows_V_reg_338 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_sig_bdd_87 : BOOLEAN;
    signal cols_V_reg_343 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_data_V_reg_348 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_99 : BOOLEAN;
    signal tmp_last_V_reg_356 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond3_i_fu_298_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_bdd_113 : BOOLEAN;
    signal i_V_fu_303_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_V_reg_372 : STD_LOGIC_VECTOR (10 downto 0);
    signal exitcond_i_fu_313_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_i_reg_377 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_pp1_stg0_fsm_4 : STD_LOGIC;
    signal ap_sig_bdd_124 : BOOLEAN;
    signal brmerge_i_fu_327_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_bdd_132 : BOOLEAN;
    signal ap_reg_ppiten_pp1_it0 : STD_LOGIC := '0';
    signal ap_sig_bdd_139 : BOOLEAN;
    signal ap_reg_ppiten_pp1_it1 : STD_LOGIC := '0';
    signal j_V_fu_318_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_sig_cseq_ST_st7_fsm_5 : STD_LOGIC;
    signal ap_sig_bdd_158 : BOOLEAN;
    signal ap_sig_bdd_163 : BOOLEAN;
    signal axi_last_V_3_i_reg_241 : STD_LOGIC_VECTOR (0 downto 0);
    signal axi_last_V1_i_reg_139 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st8_fsm_6 : STD_LOGIC;
    signal ap_sig_bdd_181 : BOOLEAN;
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_bdd_188 : BOOLEAN;
    signal axi_data_V_3_i_reg_253 : STD_LOGIC_VECTOR (7 downto 0);
    signal axi_data_V1_i_reg_149 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_i_reg_159 : STD_LOGIC_VECTOR (10 downto 0);
    signal eol_phi_fu_173_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal axi_data_V_1_i_phi_fu_184_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal eol_i_phi_fu_207_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_phiprechg_axi_last_V_2_i_reg_215pp1_it0 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_phiprechg_p_Val2_s_reg_228pp1_it0 : STD_LOGIC_VECTOR (7 downto 0);
    signal eol_2_i_reg_265 : STD_LOGIC_VECTOR (0 downto 0);
    signal sof_1_i_fu_82 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_cast_i_fu_294_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_7_cast_i_fu_309_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_user_V_fu_285_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_sig_bdd_131 : BOOLEAN;
    signal ap_sig_bdd_211 : BOOLEAN;
    signal ap_sig_bdd_150 : BOOLEAN;


begin




    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- ap_done_reg assign process. --
    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_continue)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and not((exitcond3_i_fu_298_p2 = ap_const_lv1_0)))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp1_it0 assign process. --
    ap_reg_ppiten_pp1_it0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp1_it0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and not(((ap_sig_bdd_132 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_139 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))) and not((exitcond_i_fu_313_p2 = ap_const_lv1_0)))) then 
                    ap_reg_ppiten_pp1_it0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (exitcond3_i_fu_298_p2 = ap_const_lv1_0))) then 
                    ap_reg_ppiten_pp1_it0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    -- ap_reg_ppiten_pp1_it1 assign process. --
    ap_reg_ppiten_pp1_it1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ppiten_pp1_it1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond_i_fu_313_p2 = ap_const_lv1_0) and not(((ap_sig_bdd_132 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_139 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))))) then 
                    ap_reg_ppiten_pp1_it1 <= ap_const_logic_1;
                elsif ((((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (exitcond3_i_fu_298_p2 = ap_const_lv1_0)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and not(((ap_sig_bdd_132 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_139 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))) and not((exitcond_i_fu_313_p2 = ap_const_lv1_0))))) then 
                    ap_reg_ppiten_pp1_it1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    -- axi_data_V1_i_reg_149 assign process. --
    axi_data_V1_i_reg_149_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
                axi_data_V1_i_reg_149 <= tmp_data_V_reg_348;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_6)) then 
                axi_data_V1_i_reg_149 <= axi_data_V_3_i_reg_253;
            end if; 
        end if;
    end process;

    -- axi_data_V_1_i_reg_181 assign process. --
    axi_data_V_1_i_reg_181_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond_i_reg_377 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1) and not(((ap_sig_bdd_132 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_139 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))))) then 
                axi_data_V_1_i_reg_181 <= p_Val2_s_reg_228;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (exitcond3_i_fu_298_p2 = ap_const_lv1_0))) then 
                axi_data_V_1_i_reg_181 <= axi_data_V1_i_reg_149;
            end if; 
        end if;
    end process;

    -- axi_data_V_3_i_reg_253 assign process. --
    axi_data_V_3_i_reg_253_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and not(((ap_sig_bdd_132 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_139 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))) and not((exitcond_i_fu_313_p2 = ap_const_lv1_0)))) then 
                axi_data_V_3_i_reg_253 <= axi_data_V_1_i_phi_fu_184_p4;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_5) and (ap_const_lv1_0 = eol_2_i_reg_265) and not(ap_sig_bdd_163))) then 
                axi_data_V_3_i_reg_253 <= input_stream_TDATA;
            end if; 
        end if;
    end process;

    -- axi_last_V1_i_reg_139 assign process. --
    axi_last_V1_i_reg_139_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
                axi_last_V1_i_reg_139 <= tmp_last_V_reg_356;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_6)) then 
                axi_last_V1_i_reg_139 <= axi_last_V_3_i_reg_241;
            end if; 
        end if;
    end process;

    -- axi_last_V_2_i_reg_215 assign process. --
    axi_last_V_2_i_reg_215_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (ap_sig_bdd_150) then
                if (ap_sig_bdd_211) then 
                    axi_last_V_2_i_reg_215 <= eol_phi_fu_173_p4;
                elsif (ap_sig_bdd_131) then 
                    axi_last_V_2_i_reg_215 <= input_stream_TLAST;
                elsif ((ap_true = ap_true)) then 
                    axi_last_V_2_i_reg_215 <= ap_reg_phiprechg_axi_last_V_2_i_reg_215pp1_it0;
                end if;
            end if; 
        end if;
    end process;

    -- axi_last_V_3_i_reg_241 assign process. --
    axi_last_V_3_i_reg_241_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and not(((ap_sig_bdd_132 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_139 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))) and not((exitcond_i_fu_313_p2 = ap_const_lv1_0)))) then 
                axi_last_V_3_i_reg_241 <= eol_phi_fu_173_p4;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_5) and (ap_const_lv1_0 = eol_2_i_reg_265) and not(ap_sig_bdd_163))) then 
                axi_last_V_3_i_reg_241 <= input_stream_TLAST;
            end if; 
        end if;
    end process;

    -- eol_2_i_reg_265 assign process. --
    eol_2_i_reg_265_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and not(((ap_sig_bdd_132 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_139 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))) and not((exitcond_i_fu_313_p2 = ap_const_lv1_0)))) then 
                eol_2_i_reg_265 <= eol_i_phi_fu_207_p4;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_5) and (ap_const_lv1_0 = eol_2_i_reg_265) and not(ap_sig_bdd_163))) then 
                eol_2_i_reg_265 <= input_stream_TLAST;
            end if; 
        end if;
    end process;

    -- eol_i_reg_203 assign process. --
    eol_i_reg_203_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond_i_reg_377 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1) and not(((ap_sig_bdd_132 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_139 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))))) then 
                eol_i_reg_203 <= axi_last_V_2_i_reg_215;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (exitcond3_i_fu_298_p2 = ap_const_lv1_0))) then 
                eol_i_reg_203 <= ap_const_lv1_0;
            end if; 
        end if;
    end process;

    -- eol_reg_170 assign process. --
    eol_reg_170_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond_i_reg_377 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1) and not(((ap_sig_bdd_132 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_139 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))))) then 
                eol_reg_170 <= axi_last_V_2_i_reg_215;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (exitcond3_i_fu_298_p2 = ap_const_lv1_0))) then 
                eol_reg_170 <= axi_last_V1_i_reg_139;
            end if; 
        end if;
    end process;

    -- p_7_i_reg_192 assign process. --
    p_7_i_reg_192_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond_i_fu_313_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and not(((ap_sig_bdd_132 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_139 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))))) then 
                p_7_i_reg_192 <= j_V_fu_318_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and (exitcond3_i_fu_298_p2 = ap_const_lv1_0))) then 
                p_7_i_reg_192 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;

    -- p_Val2_s_reg_228 assign process. --
    p_Val2_s_reg_228_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (ap_sig_bdd_150) then
                if (ap_sig_bdd_211) then 
                    p_Val2_s_reg_228 <= axi_data_V_1_i_phi_fu_184_p4;
                elsif (ap_sig_bdd_131) then 
                    p_Val2_s_reg_228 <= input_stream_TDATA;
                elsif ((ap_true = ap_true)) then 
                    p_Val2_s_reg_228 <= ap_reg_phiprechg_p_Val2_s_reg_228pp1_it0;
                end if;
            end if; 
        end if;
    end process;

    -- p_i_reg_159 assign process. --
    p_i_reg_159_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
                p_i_reg_159 <= ap_const_lv11_0;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_6)) then 
                p_i_reg_159 <= i_V_reg_372;
            end if; 
        end if;
    end process;

    -- sof_1_i_fu_82 assign process. --
    sof_1_i_fu_82_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond_i_fu_313_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and not(((ap_sig_bdd_132 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_139 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))))) then 
                sof_1_i_fu_82 <= ap_const_lv1_0;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
                sof_1_i_fu_82 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_87))) then
                cols_V_reg_343 <= img_cols_V_dout;
                rows_V_reg_338 <= img_rows_V_dout;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and not(((ap_sig_bdd_132 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_139 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))))) then
                exitcond_i_reg_377 <= exitcond_i_fu_313_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then
                i_V_reg_372 <= i_V_fu_303_p2;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((input_stream_TVALID = ap_const_logic_0)))) then
                tmp_data_V_reg_348 <= input_stream_TDATA;
                tmp_last_V_reg_356 <= input_stream_TLAST;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_CS_fsm, input_stream_TVALID, ap_sig_bdd_87, exitcond3_i_fu_298_p2, exitcond_i_fu_313_p2, ap_sig_bdd_132, ap_reg_ppiten_pp1_it0, ap_sig_bdd_139, ap_reg_ppiten_pp1_it1, ap_sig_bdd_163, eol_2_i_reg_265, tmp_user_V_fu_285_p1)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not(ap_sig_bdd_87)) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if ((not((input_stream_TVALID = ap_const_logic_0)) and (ap_const_lv1_0 = tmp_user_V_fu_285_p1))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                elsif ((not((input_stream_TVALID = ap_const_logic_0)) and not((ap_const_lv1_0 = tmp_user_V_fu_285_p1)))) then
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                else
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                end if;
            when ap_ST_st3_fsm_2 => 
                ap_NS_fsm <= ap_ST_st4_fsm_3;
            when ap_ST_st4_fsm_3 => 
                if (not((exitcond3_i_fu_298_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_pp1_stg0_fsm_4;
                end if;
            when ap_ST_pp1_stg0_fsm_4 => 
                if (not(((ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and not(((ap_sig_bdd_132 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_139 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))) and not((exitcond_i_fu_313_p2 = ap_const_lv1_0))))) then
                    ap_NS_fsm <= ap_ST_pp1_stg0_fsm_4;
                elsif (((ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and not(((ap_sig_bdd_132 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_139 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))) and not((exitcond_i_fu_313_p2 = ap_const_lv1_0)))) then
                    ap_NS_fsm <= ap_ST_st7_fsm_5;
                else
                    ap_NS_fsm <= ap_ST_pp1_stg0_fsm_4;
                end if;
            when ap_ST_st7_fsm_5 => 
                if (((ap_const_lv1_0 = eol_2_i_reg_265) and not(ap_sig_bdd_163))) then
                    ap_NS_fsm <= ap_ST_st7_fsm_5;
                elsif ((not(ap_sig_bdd_163) and not((ap_const_lv1_0 = eol_2_i_reg_265)))) then
                    ap_NS_fsm <= ap_ST_st8_fsm_6;
                else
                    ap_NS_fsm <= ap_ST_st7_fsm_5;
                end if;
            when ap_ST_st8_fsm_6 => 
                ap_NS_fsm <= ap_ST_st4_fsm_3;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(ap_done_reg, exitcond3_i_fu_298_p2, ap_sig_cseq_ST_st4_fsm_3)
    begin
        if (((ap_const_logic_1 = ap_done_reg) or ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and not((exitcond3_i_fu_298_p2 = ap_const_lv1_0))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(exitcond3_i_fu_298_p2, ap_sig_cseq_ST_st4_fsm_3)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and not((exitcond3_i_fu_298_p2 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_reg_phiprechg_axi_last_V_2_i_reg_215pp1_it0 <= "X";
    ap_reg_phiprechg_p_Val2_s_reg_228pp1_it0 <= "XXXXXXXX";

    -- ap_sig_bdd_113 assign process. --
    ap_sig_bdd_113_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_113 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    -- ap_sig_bdd_124 assign process. --
    ap_sig_bdd_124_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_124 <= (ap_const_lv1_1 = ap_CS_fsm(4 downto 4));
    end process;


    -- ap_sig_bdd_131 assign process. --
    ap_sig_bdd_131_assign_proc : process(exitcond_i_fu_313_p2, brmerge_i_fu_327_p2)
    begin
                ap_sig_bdd_131 <= ((exitcond_i_fu_313_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = brmerge_i_fu_327_p2));
    end process;


    -- ap_sig_bdd_132 assign process. --
    ap_sig_bdd_132_assign_proc : process(input_stream_TVALID, exitcond_i_fu_313_p2, brmerge_i_fu_327_p2)
    begin
                ap_sig_bdd_132 <= ((input_stream_TVALID = ap_const_logic_0) and (exitcond_i_fu_313_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = brmerge_i_fu_327_p2));
    end process;


    -- ap_sig_bdd_139 assign process. --
    ap_sig_bdd_139_assign_proc : process(img_data_stream_V_full_n, exitcond_i_reg_377)
    begin
                ap_sig_bdd_139 <= ((img_data_stream_V_full_n = ap_const_logic_0) and (exitcond_i_reg_377 = ap_const_lv1_0));
    end process;


    -- ap_sig_bdd_150 assign process. --
    ap_sig_bdd_150_assign_proc : process(ap_sig_cseq_ST_pp1_stg0_fsm_4, ap_sig_bdd_132, ap_reg_ppiten_pp1_it0, ap_sig_bdd_139, ap_reg_ppiten_pp1_it1)
    begin
                ap_sig_bdd_150 <= ((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and not(((ap_sig_bdd_132 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_139 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))));
    end process;


    -- ap_sig_bdd_158 assign process. --
    ap_sig_bdd_158_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_158 <= (ap_const_lv1_1 = ap_CS_fsm(5 downto 5));
    end process;


    -- ap_sig_bdd_163 assign process. --
    ap_sig_bdd_163_assign_proc : process(input_stream_TVALID, eol_2_i_reg_265)
    begin
                ap_sig_bdd_163 <= ((input_stream_TVALID = ap_const_logic_0) and (ap_const_lv1_0 = eol_2_i_reg_265));
    end process;


    -- ap_sig_bdd_181 assign process. --
    ap_sig_bdd_181_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_181 <= (ap_const_lv1_1 = ap_CS_fsm(6 downto 6));
    end process;


    -- ap_sig_bdd_188 assign process. --
    ap_sig_bdd_188_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_188 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    -- ap_sig_bdd_211 assign process. --
    ap_sig_bdd_211_assign_proc : process(exitcond_i_fu_313_p2, brmerge_i_fu_327_p2)
    begin
                ap_sig_bdd_211 <= ((exitcond_i_fu_313_p2 = ap_const_lv1_0) and not((ap_const_lv1_0 = brmerge_i_fu_327_p2)));
    end process;


    -- ap_sig_bdd_26 assign process. --
    ap_sig_bdd_26_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_26 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_87 assign process. --
    ap_sig_bdd_87_assign_proc : process(ap_start, ap_done_reg, img_rows_V_empty_n, img_cols_V_empty_n, img_rows_V_out_full_n, img_cols_V_out_full_n)
    begin
                ap_sig_bdd_87 <= ((img_rows_V_empty_n = ap_const_logic_0) or (img_cols_V_empty_n = ap_const_logic_0) or (img_rows_V_out_full_n = ap_const_logic_0) or (img_cols_V_out_full_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    -- ap_sig_bdd_99 assign process. --
    ap_sig_bdd_99_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_99 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_cseq_ST_pp1_stg0_fsm_4 assign process. --
    ap_sig_cseq_ST_pp1_stg0_fsm_4_assign_proc : process(ap_sig_bdd_124)
    begin
        if (ap_sig_bdd_124) then 
            ap_sig_cseq_ST_pp1_stg0_fsm_4 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_pp1_stg0_fsm_4 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st1_fsm_0 assign process. --
    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_bdd_26)
    begin
        if (ap_sig_bdd_26) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st2_fsm_1 assign process. --
    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_bdd_99)
    begin
        if (ap_sig_bdd_99) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st3_fsm_2 assign process. --
    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_bdd_188)
    begin
        if (ap_sig_bdd_188) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st4_fsm_3 assign process. --
    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_bdd_113)
    begin
        if (ap_sig_bdd_113) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st7_fsm_5 assign process. --
    ap_sig_cseq_ST_st7_fsm_5_assign_proc : process(ap_sig_bdd_158)
    begin
        if (ap_sig_bdd_158) then 
            ap_sig_cseq_ST_st7_fsm_5 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st7_fsm_5 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st8_fsm_6 assign process. --
    ap_sig_cseq_ST_st8_fsm_6_assign_proc : process(ap_sig_bdd_181)
    begin
        if (ap_sig_bdd_181) then 
            ap_sig_cseq_ST_st8_fsm_6 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st8_fsm_6 <= ap_const_logic_0;
        end if; 
    end process;


    -- axi_data_V_1_i_phi_fu_184_p4 assign process. --
    axi_data_V_1_i_phi_fu_184_p4_assign_proc : process(axi_data_V_1_i_reg_181, p_Val2_s_reg_228, exitcond_i_reg_377, ap_sig_cseq_ST_pp1_stg0_fsm_4, ap_reg_ppiten_pp1_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond_i_reg_377 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1))) then 
            axi_data_V_1_i_phi_fu_184_p4 <= p_Val2_s_reg_228;
        else 
            axi_data_V_1_i_phi_fu_184_p4 <= axi_data_V_1_i_reg_181;
        end if; 
    end process;

    brmerge_i_fu_327_p2 <= (sof_1_i_fu_82 or eol_i_phi_fu_207_p4);

    -- eol_i_phi_fu_207_p4 assign process. --
    eol_i_phi_fu_207_p4_assign_proc : process(eol_i_reg_203, axi_last_V_2_i_reg_215, exitcond_i_reg_377, ap_sig_cseq_ST_pp1_stg0_fsm_4, ap_reg_ppiten_pp1_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond_i_reg_377 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1))) then 
            eol_i_phi_fu_207_p4 <= axi_last_V_2_i_reg_215;
        else 
            eol_i_phi_fu_207_p4 <= eol_i_reg_203;
        end if; 
    end process;


    -- eol_phi_fu_173_p4 assign process. --
    eol_phi_fu_173_p4_assign_proc : process(eol_reg_170, axi_last_V_2_i_reg_215, exitcond_i_reg_377, ap_sig_cseq_ST_pp1_stg0_fsm_4, ap_reg_ppiten_pp1_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond_i_reg_377 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1))) then 
            eol_phi_fu_173_p4 <= axi_last_V_2_i_reg_215;
        else 
            eol_phi_fu_173_p4 <= eol_reg_170;
        end if; 
    end process;

    exitcond3_i_fu_298_p2 <= "1" when (p_cast_i_fu_294_p1 = rows_V_reg_338) else "0";
    exitcond_i_fu_313_p2 <= "1" when (p_7_cast_i_fu_309_p1 = cols_V_reg_343) else "0";
    i_V_fu_303_p2 <= std_logic_vector(unsigned(p_i_reg_159) + unsigned(ap_const_lv11_1));
    img_cols_V_out_din <= img_cols_V_dout;

    -- img_cols_V_out_write assign process. --
    img_cols_V_out_write_assign_proc : process(ap_sig_cseq_ST_st1_fsm_0, ap_sig_bdd_87)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_87))) then 
            img_cols_V_out_write <= ap_const_logic_1;
        else 
            img_cols_V_out_write <= ap_const_logic_0;
        end if; 
    end process;


    -- img_cols_V_read assign process. --
    img_cols_V_read_assign_proc : process(ap_sig_cseq_ST_st1_fsm_0, ap_sig_bdd_87)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_87))) then 
            img_cols_V_read <= ap_const_logic_1;
        else 
            img_cols_V_read <= ap_const_logic_0;
        end if; 
    end process;

    img_data_stream_V_din <= p_Val2_s_reg_228;

    -- img_data_stream_V_write assign process. --
    img_data_stream_V_write_assign_proc : process(exitcond_i_reg_377, ap_sig_cseq_ST_pp1_stg0_fsm_4, ap_sig_bdd_132, ap_reg_ppiten_pp1_it0, ap_sig_bdd_139, ap_reg_ppiten_pp1_it1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond_i_reg_377 = ap_const_lv1_0) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1) and not(((ap_sig_bdd_132 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_139 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1)))))) then 
            img_data_stream_V_write <= ap_const_logic_1;
        else 
            img_data_stream_V_write <= ap_const_logic_0;
        end if; 
    end process;

    img_rows_V_out_din <= img_rows_V_dout;

    -- img_rows_V_out_write assign process. --
    img_rows_V_out_write_assign_proc : process(ap_sig_cseq_ST_st1_fsm_0, ap_sig_bdd_87)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_87))) then 
            img_rows_V_out_write <= ap_const_logic_1;
        else 
            img_rows_V_out_write <= ap_const_logic_0;
        end if; 
    end process;


    -- img_rows_V_read assign process. --
    img_rows_V_read_assign_proc : process(ap_sig_cseq_ST_st1_fsm_0, ap_sig_bdd_87)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not(ap_sig_bdd_87))) then 
            img_rows_V_read <= ap_const_logic_1;
        else 
            img_rows_V_read <= ap_const_logic_0;
        end if; 
    end process;


    -- input_stream_TREADY assign process. --
    input_stream_TREADY_assign_proc : process(input_stream_TVALID, ap_sig_cseq_ST_st2_fsm_1, exitcond_i_fu_313_p2, ap_sig_cseq_ST_pp1_stg0_fsm_4, brmerge_i_fu_327_p2, ap_sig_bdd_132, ap_reg_ppiten_pp1_it0, ap_sig_bdd_139, ap_reg_ppiten_pp1_it1, ap_sig_cseq_ST_st7_fsm_5, ap_sig_bdd_163, eol_2_i_reg_265)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((input_stream_TVALID = ap_const_logic_0))) or ((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_5) and (ap_const_lv1_0 = eol_2_i_reg_265) and not(ap_sig_bdd_163)) or ((ap_const_logic_1 = ap_sig_cseq_ST_pp1_stg0_fsm_4) and (exitcond_i_fu_313_p2 = ap_const_lv1_0) and (ap_const_lv1_0 = brmerge_i_fu_327_p2) and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0) and not(((ap_sig_bdd_132 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it0)) or (ap_sig_bdd_139 and (ap_const_logic_1 = ap_reg_ppiten_pp1_it1))))))) then 
            input_stream_TREADY <= ap_const_logic_1;
        else 
            input_stream_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    j_V_fu_318_p2 <= std_logic_vector(unsigned(p_7_i_reg_192) + unsigned(ap_const_lv11_1));
    p_7_cast_i_fu_309_p1 <= std_logic_vector(resize(unsigned(p_7_i_reg_192),12));
    p_cast_i_fu_294_p1 <= std_logic_vector(resize(unsigned(p_i_reg_159),12));
    tmp_user_V_fu_285_p1 <= input_stream_TUSER;
end behav;
