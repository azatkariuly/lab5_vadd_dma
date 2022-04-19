-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity load_input20 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in1_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    in1_TVALID : IN STD_LOGIC;
    in1_TREADY : OUT STD_LOGIC;
    in1_TKEEP : IN STD_LOGIC_VECTOR (3 downto 0);
    in1_TSTRB : IN STD_LOGIC_VECTOR (3 downto 0);
    in1_TUSER : IN STD_LOGIC_VECTOR (3 downto 0);
    in1_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    in1_TID : IN STD_LOGIC_VECTOR (4 downto 0);
    in1_TDEST : IN STD_LOGIC_VECTOR (4 downto 0);
    size_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    size_empty_n : IN STD_LOGIC;
    size_read : OUT STD_LOGIC;
    size_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    size_out_full_n : IN STD_LOGIC;
    size_out_write : OUT STD_LOGIC;
    in1_stream_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    in1_stream_V_full_n : IN STD_LOGIC;
    in1_stream_V_write : OUT STD_LOGIC );
end;


architecture behav of load_input20 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv31_1 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal in1_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln10_fu_154_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal size_blk_n : STD_LOGIC;
    signal size_out_blk_n : STD_LOGIC;
    signal in1_stream_V_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal icmp_ln10_reg_178 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_0_i_i_reg_139 : STD_LOGIC_VECTOR (30 downto 0);
    signal size_read_reg_173 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal add_ln10_fu_159_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal in_data_V_tmp_reg_187 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal i_0_i_i_cast_fu_150_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal regslice_both_in_data_V_U_apdone_blk : STD_LOGIC;
    signal in1_TDATA_int : STD_LOGIC_VECTOR (31 downto 0);
    signal in1_TVALID_int : STD_LOGIC;
    signal in1_TREADY_int : STD_LOGIC;
    signal regslice_both_in_data_V_U_ack_in : STD_LOGIC;
    signal regslice_both_in_keep_V_U_apdone_blk : STD_LOGIC;
    signal in1_TKEEP_int : STD_LOGIC_VECTOR (3 downto 0);
    signal regslice_both_in_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_in_keep_V_U_ack_in : STD_LOGIC;
    signal regslice_both_in_strb_V_U_apdone_blk : STD_LOGIC;
    signal in1_TSTRB_int : STD_LOGIC_VECTOR (3 downto 0);
    signal regslice_both_in_strb_V_U_vld_out : STD_LOGIC;
    signal regslice_both_in_strb_V_U_ack_in : STD_LOGIC;
    signal regslice_both_in_user_V_U_apdone_blk : STD_LOGIC;
    signal in1_TUSER_int : STD_LOGIC_VECTOR (3 downto 0);
    signal regslice_both_in_user_V_U_vld_out : STD_LOGIC;
    signal regslice_both_in_user_V_U_ack_in : STD_LOGIC;
    signal regslice_both_in_last_V_U_apdone_blk : STD_LOGIC;
    signal in1_TLAST_int : STD_LOGIC_VECTOR (0 downto 0);
    signal regslice_both_in_last_V_U_vld_out : STD_LOGIC;
    signal regslice_both_in_last_V_U_ack_in : STD_LOGIC;
    signal regslice_both_in_id_V_U_apdone_blk : STD_LOGIC;
    signal in1_TID_int : STD_LOGIC_VECTOR (4 downto 0);
    signal regslice_both_in_id_V_U_vld_out : STD_LOGIC;
    signal regslice_both_in_id_V_U_ack_in : STD_LOGIC;
    signal regslice_both_in_dest_V_U_apdone_blk : STD_LOGIC;
    signal in1_TDEST_int : STD_LOGIC_VECTOR (4 downto 0);
    signal regslice_both_in_dest_V_U_vld_out : STD_LOGIC;
    signal regslice_both_in_dest_V_U_ack_in : STD_LOGIC;

    component regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    regslice_both_in_data_V_U : component regslice_both
    generic map (
        DataWidth => 32)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => in1_TDATA,
        vld_in => in1_TVALID,
        ack_in => regslice_both_in_data_V_U_ack_in,
        data_out => in1_TDATA_int,
        vld_out => in1_TVALID_int,
        ack_out => in1_TREADY_int,
        apdone_blk => regslice_both_in_data_V_U_apdone_blk);

    regslice_both_in_keep_V_U : component regslice_both
    generic map (
        DataWidth => 4)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => in1_TKEEP,
        vld_in => in1_TVALID,
        ack_in => regslice_both_in_keep_V_U_ack_in,
        data_out => in1_TKEEP_int,
        vld_out => regslice_both_in_keep_V_U_vld_out,
        ack_out => in1_TREADY_int,
        apdone_blk => regslice_both_in_keep_V_U_apdone_blk);

    regslice_both_in_strb_V_U : component regslice_both
    generic map (
        DataWidth => 4)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => in1_TSTRB,
        vld_in => in1_TVALID,
        ack_in => regslice_both_in_strb_V_U_ack_in,
        data_out => in1_TSTRB_int,
        vld_out => regslice_both_in_strb_V_U_vld_out,
        ack_out => in1_TREADY_int,
        apdone_blk => regslice_both_in_strb_V_U_apdone_blk);

    regslice_both_in_user_V_U : component regslice_both
    generic map (
        DataWidth => 4)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => in1_TUSER,
        vld_in => in1_TVALID,
        ack_in => regslice_both_in_user_V_U_ack_in,
        data_out => in1_TUSER_int,
        vld_out => regslice_both_in_user_V_U_vld_out,
        ack_out => in1_TREADY_int,
        apdone_blk => regslice_both_in_user_V_U_apdone_blk);

    regslice_both_in_last_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => in1_TLAST,
        vld_in => in1_TVALID,
        ack_in => regslice_both_in_last_V_U_ack_in,
        data_out => in1_TLAST_int,
        vld_out => regslice_both_in_last_V_U_vld_out,
        ack_out => in1_TREADY_int,
        apdone_blk => regslice_both_in_last_V_U_apdone_blk);

    regslice_both_in_id_V_U : component regslice_both
    generic map (
        DataWidth => 5)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => in1_TID,
        vld_in => in1_TVALID,
        ack_in => regslice_both_in_id_V_U_ack_in,
        data_out => in1_TID_int,
        vld_out => regslice_both_in_id_V_U_vld_out,
        ack_out => in1_TREADY_int,
        apdone_blk => regslice_both_in_id_V_U_apdone_blk);

    regslice_both_in_dest_V_U : component regslice_both
    generic map (
        DataWidth => 5)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => in1_TDEST,
        vld_in => in1_TVALID,
        ack_in => regslice_both_in_dest_V_U_ack_in,
        data_out => in1_TDEST_int,
        vld_out => regslice_both_in_dest_V_U_vld_out,
        ack_out => in1_TREADY_int,
        apdone_blk => regslice_both_in_dest_V_U_apdone_blk);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((not(((ap_start = ap_const_logic_0) or (size_out_full_n = ap_const_logic_0) or (size_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif ((not(((ap_start = ap_const_logic_0) or (size_out_full_n = ap_const_logic_0) or (size_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_i_i_reg_139_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln10_fu_154_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                i_0_i_i_reg_139 <= add_ln10_fu_159_p2;
            elsif ((not(((ap_start = ap_const_logic_0) or (size_out_full_n = ap_const_logic_0) or (size_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_i_i_reg_139 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln10_reg_178 <= icmp_ln10_fu_154_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln10_fu_154_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                in_data_V_tmp_reg_187 <= in1_TDATA_int;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (size_out_full_n = ap_const_logic_0) or (size_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                size_read_reg_173 <= size_dout;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, size_empty_n, size_out_full_n, ap_enable_reg_pp0_iter0, icmp_ln10_fu_154_p2, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (size_out_full_n = ap_const_logic_0) or (size_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((icmp_ln10_fu_154_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((icmp_ln10_fu_154_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add_ln10_fu_159_p2 <= std_logic_vector(unsigned(i_0_i_i_reg_139) + unsigned(ap_const_lv31_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state4 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(in1_stream_V_full_n, ap_enable_reg_pp0_iter0, icmp_ln10_fu_154_p2, ap_enable_reg_pp0_iter1, icmp_ln10_reg_178, in1_TVALID_int)
    begin
                ap_block_pp0_stage0_01001 <= (((icmp_ln10_reg_178 = ap_const_lv1_1) and (in1_stream_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((icmp_ln10_fu_154_p2 = ap_const_lv1_1) and (in1_TVALID_int = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(in1_stream_V_full_n, ap_enable_reg_pp0_iter0, icmp_ln10_fu_154_p2, ap_enable_reg_pp0_iter1, icmp_ln10_reg_178, in1_TVALID_int)
    begin
                ap_block_pp0_stage0_11001 <= (((icmp_ln10_reg_178 = ap_const_lv1_1) and (in1_stream_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((icmp_ln10_fu_154_p2 = ap_const_lv1_1) and (in1_TVALID_int = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(in1_stream_V_full_n, ap_enable_reg_pp0_iter0, icmp_ln10_fu_154_p2, ap_enable_reg_pp0_iter1, icmp_ln10_reg_178, in1_TVALID_int)
    begin
                ap_block_pp0_stage0_subdone <= (((icmp_ln10_reg_178 = ap_const_lv1_1) and (in1_stream_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)) or ((icmp_ln10_fu_154_p2 = ap_const_lv1_1) and (in1_TVALID_int = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, size_empty_n, size_out_full_n)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (size_out_full_n = ap_const_logic_0) or (size_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state2_pp0_stage0_iter0_assign_proc : process(icmp_ln10_fu_154_p2, in1_TVALID_int)
    begin
                ap_block_state2_pp0_stage0_iter0 <= ((icmp_ln10_fu_154_p2 = ap_const_lv1_1) and (in1_TVALID_int = ap_const_logic_0));
    end process;


    ap_block_state3_pp0_stage0_iter1_assign_proc : process(in1_stream_V_full_n, icmp_ln10_reg_178)
    begin
                ap_block_state3_pp0_stage0_iter1 <= ((icmp_ln10_reg_178 = ap_const_lv1_1) and (in1_stream_V_full_n = ap_const_logic_0));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln10_fu_154_p2)
    begin
        if ((icmp_ln10_fu_154_p2 = ap_const_lv1_0)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i_0_i_i_cast_fu_150_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_i_i_reg_139),32));
    icmp_ln10_fu_154_p2 <= "1" when (signed(i_0_i_i_cast_fu_150_p1) < signed(size_read_reg_173)) else "0";

    in1_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, icmp_ln10_fu_154_p2, in1_TVALID_int)
    begin
        if (((icmp_ln10_fu_154_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            in1_TDATA_blk_n <= in1_TVALID_int;
        else 
            in1_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    in1_TREADY_assign_proc : process(in1_TVALID, regslice_both_in_data_V_U_ack_in)
    begin
        if (((in1_TVALID = ap_const_logic_1) and (regslice_both_in_data_V_U_ack_in = ap_const_logic_1))) then 
            in1_TREADY <= ap_const_logic_1;
        else 
            in1_TREADY <= ap_const_logic_0;
        end if; 
    end process;


    in1_TREADY_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, icmp_ln10_fu_154_p2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln10_fu_154_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            in1_TREADY_int <= ap_const_logic_1;
        else 
            in1_TREADY_int <= ap_const_logic_0;
        end if; 
    end process;


    in1_stream_V_blk_n_assign_proc : process(in1_stream_V_full_n, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln10_reg_178)
    begin
        if (((icmp_ln10_reg_178 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            in1_stream_V_blk_n <= in1_stream_V_full_n;
        else 
            in1_stream_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    in1_stream_V_din <= in_data_V_tmp_reg_187;

    in1_stream_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln10_reg_178, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln10_reg_178 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            in1_stream_V_write <= ap_const_logic_1;
        else 
            in1_stream_V_write <= ap_const_logic_0;
        end if; 
    end process;


    size_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, size_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            size_blk_n <= size_empty_n;
        else 
            size_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    size_out_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, size_out_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            size_out_blk_n <= size_out_full_n;
        else 
            size_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    size_out_din <= size_dout;

    size_out_write_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, size_empty_n, size_out_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (size_out_full_n = ap_const_logic_0) or (size_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            size_out_write <= ap_const_logic_1;
        else 
            size_out_write <= ap_const_logic_0;
        end if; 
    end process;


    size_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, size_empty_n, size_out_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (size_out_full_n = ap_const_logic_0) or (size_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            size_read <= ap_const_logic_1;
        else 
            size_read <= ap_const_logic_0;
        end if; 
    end process;

end behav;