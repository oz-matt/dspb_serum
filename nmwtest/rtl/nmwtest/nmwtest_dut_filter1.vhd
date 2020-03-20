-- ------------------------------------------------------------------------- 
-- Intel Altera DSP Builder Advanced Flow Tools Release Version 16.1
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2016 Intel Corporation.  All rights reserved.
-- Your use of  Intel  Corporation's design tools,  logic functions and other
-- software and tools,  and its AMPP  partner logic functions, and  any output
-- files  any of the  foregoing  device programming or simulation files),  and
-- any associated  documentation or information are expressly subject  to  the
-- terms and conditions  of the Intel FPGA Software License Agreement,
-- Intel  MegaCore  Function  License  Agreement, or other applicable license
-- agreement,  including,  without limitation,  that your use  is for the sole
-- purpose of  programming  logic  devices  manufactured by Intel and sold by
-- Intel or its authorized  distributors.  Please  refer  to  the  applicable
-- agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from nmwtest_dut_filter1
-- VHDL created on Mon Mar 16 22:23:12 2020


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

USE work.nmwtest_dut_safe_path.all;
entity nmwtest_dut_filter1 is
    port (
        xIn_v : in std_logic_vector(0 downto 0);  -- sfix1
        xIn_c : in std_logic_vector(7 downto 0);  -- sfix8
        xIn_0 : in std_logic_vector(13 downto 0);  -- sfix14
        xIn_1 : in std_logic_vector(13 downto 0);  -- sfix14
        bankIn_0 : in std_logic_vector(0 downto 0);  -- sfix1
        bankIn_1 : in std_logic_vector(0 downto 0);  -- sfix1
        busIn_writedata : in std_logic_vector(15 downto 0);  -- sfix16
        busIn_address : in std_logic_vector(9 downto 0);  -- sfix10
        busIn_write : in std_logic_vector(0 downto 0);  -- sfix1
        xOut_v : out std_logic_vector(0 downto 0);  -- ufix1
        xOut_c : out std_logic_vector(7 downto 0);  -- ufix8
        xOut_0 : out std_logic_vector(31 downto 0);  -- sfix32
        xOut_1 : out std_logic_vector(31 downto 0);  -- sfix32
        xOut_2 : out std_logic_vector(31 downto 0);  -- sfix32
        xOut_3 : out std_logic_vector(31 downto 0);  -- sfix32
        clk : in std_logic;
        areset : in std_logic;
        h_areset : in std_logic
    );
end nmwtest_dut_filter1;

architecture normal of nmwtest_dut_filter1 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 270007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_busIn_writedata_11_q : STD_LOGIC_VECTOR (15 downto 0);
    signal d_u0_m0_wo0_memread_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_wi0_r0_phasedelay0_q_11_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr1_q_11_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr2_q_11_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr3_q : STD_LOGIC_VECTOR (13 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr3_q_11_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr4_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr5_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr6_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr7_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr8_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr9_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr10_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr11_q : STD_LOGIC_VECTOR (13 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr11_q_11_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr12_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr13_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr14_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr15_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr16_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr17_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr18_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr19_q : STD_LOGIC_VECTOR (13 downto 0);
    signal d_u0_m0_wo0_wi0_r0_delayr19_q_11_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr20_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr21_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr22_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u0_m0_wo0_wi0_r0_delayr23_q : STD_LOGIC_VECTOR (13 downto 0);
    signal d_u0_m0_wo0_bank_phasedelay0_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_bank_delayr1_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_bank_delayr2_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_bank_delayr3_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec0_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec0_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm0_reset0 : std_logic;
    signal u0_m0_wo0_cm0_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm0_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm0_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm0_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_dec1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec1_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec1_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm1_reset0 : std_logic;
    signal u0_m0_wo0_cm1_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm1_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm1_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm1_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_dec2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec2_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec2_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm2_reset0 : std_logic;
    signal u0_m0_wo0_cm2_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm2_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm2_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm2_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm2_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_dec3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec3_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec3_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm3_reset0 : std_logic;
    signal u0_m0_wo0_cm3_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm3_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm3_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm3_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm3_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_dec4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec4_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec4_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm4_reset0 : std_logic;
    signal u0_m0_wo0_cm4_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm4_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm4_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm4_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm4_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_dec5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec5_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec5_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm5_reset0 : std_logic;
    signal u0_m0_wo0_cm5_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm5_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm5_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm5_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm5_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_dec6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec6_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec6_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm6_reset0 : std_logic;
    signal u0_m0_wo0_cm6_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm6_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm6_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm6_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm6_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_dec7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec7_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec7_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm7_reset0 : std_logic;
    signal u0_m0_wo0_cm7_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm7_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm7_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm7_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm7_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_dec8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec8_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec8_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm8_reset0 : std_logic;
    signal u0_m0_wo0_cm8_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm8_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm8_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm8_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm8_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_dec9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec9_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec9_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm9_reset0 : std_logic;
    signal u0_m0_wo0_cm9_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm9_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm9_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm9_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm9_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_dec10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec10_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec10_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm10_reset0 : std_logic;
    signal u0_m0_wo0_cm10_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm10_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm10_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm10_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm10_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_dec11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec11_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_dec11_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm11_reset0 : std_logic;
    signal u0_m0_wo0_cm11_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm11_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm11_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_cm11_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_cm11_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo0_sym_add0_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add0_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add0_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add0_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add2_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add2_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add2_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add2_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add3_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add3_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add3_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add3_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add4_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add4_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add4_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add4_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add5_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add5_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add5_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add5_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add6_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add6_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add6_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add6_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add7_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add7_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add7_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add7_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add8_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add8_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add8_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add8_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add9_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add9_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add9_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add9_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add10_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add10_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add10_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add10_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add11_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add11_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add11_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_sym_add11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo0_mtree_madd4_2_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_madd4_2_a : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo0_mtree_madd4_2_b : STD_LOGIC_VECTOR (59 downto 0);
    signal u0_m0_wo0_mtree_madd4_2_reset : std_logic;
    signal u0_m0_wo0_mtree_madd4_2_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_madd4_1_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_madd4_1_a : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo0_mtree_madd4_1_b : STD_LOGIC_VECTOR (59 downto 0);
    signal u0_m0_wo0_mtree_madd4_1_reset : std_logic;
    signal u0_m0_wo0_mtree_madd4_1_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_madd4_0_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_madd4_0_a : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo0_mtree_madd4_0_b : STD_LOGIC_VECTOR (59 downto 0);
    signal u0_m0_wo0_mtree_madd4_0_reset : std_logic;
    signal u0_m0_wo0_mtree_madd4_0_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_add0_0_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add0_0_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add0_0_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add0_0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo0_mtree_add1_0_a : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add1_0_b : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add1_0_o : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_mtree_add1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u1_m0_wo0_wi0_r0_phasedelay0_q_11_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr1_q : STD_LOGIC_VECTOR (13 downto 0);
    signal d_u1_m0_wo0_wi0_r0_delayr1_q_11_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr2_q : STD_LOGIC_VECTOR (13 downto 0);
    signal d_u1_m0_wo0_wi0_r0_delayr2_q_11_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr3_q : STD_LOGIC_VECTOR (13 downto 0);
    signal d_u1_m0_wo0_wi0_r0_delayr3_q_11_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr4_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr5_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr6_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr7_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr8_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr9_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr10_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr11_q : STD_LOGIC_VECTOR (13 downto 0);
    signal d_u1_m0_wo0_wi0_r0_delayr11_q_11_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr12_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr13_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr14_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr15_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr16_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr17_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr18_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr19_q : STD_LOGIC_VECTOR (13 downto 0);
    signal d_u1_m0_wo0_wi0_r0_delayr19_q_11_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr20_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr21_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr22_q : STD_LOGIC_VECTOR (13 downto 0);
    signal u1_m0_wo0_wi0_r0_delayr23_q : STD_LOGIC_VECTOR (13 downto 0);
    signal d_u1_m0_wo0_bank_phasedelay0_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u1_m0_wo0_bank_delayr1_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u1_m0_wo0_bank_delayr2_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u1_m0_wo0_bank_delayr3_q_11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm0_reset0 : std_logic;
    signal u1_m0_wo0_cm0_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm0_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm0_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm0_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm1_reset0 : std_logic;
    signal u1_m0_wo0_cm1_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm1_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm1_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm1_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm2_reset0 : std_logic;
    signal u1_m0_wo0_cm2_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm2_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm2_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm2_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm2_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm3_reset0 : std_logic;
    signal u1_m0_wo0_cm3_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm3_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm3_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm3_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm3_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm4_reset0 : std_logic;
    signal u1_m0_wo0_cm4_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm4_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm4_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm4_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm4_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm5_reset0 : std_logic;
    signal u1_m0_wo0_cm5_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm5_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm5_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm5_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm5_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm6_reset0 : std_logic;
    signal u1_m0_wo0_cm6_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm6_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm6_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm6_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm6_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm7_reset0 : std_logic;
    signal u1_m0_wo0_cm7_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm7_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm7_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm7_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm7_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm8_reset0 : std_logic;
    signal u1_m0_wo0_cm8_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm8_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm8_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm8_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm8_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm9_reset0 : std_logic;
    signal u1_m0_wo0_cm9_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm9_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm9_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm9_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm9_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm10_reset0 : std_logic;
    signal u1_m0_wo0_cm10_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm10_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm10_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm10_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm10_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm11_reset0 : std_logic;
    signal u1_m0_wo0_cm11_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm11_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm11_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo0_cm11_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_cm11_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo0_sym_add0_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add0_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add0_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add0_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add2_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add2_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add2_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add2_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add3_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add3_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add3_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add3_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add4_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add4_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add4_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add4_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add5_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add5_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add5_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add5_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add6_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add6_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add6_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add6_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add7_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add7_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add7_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add7_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add8_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add8_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add8_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add8_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add9_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add9_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add9_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add9_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add10_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add10_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add10_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add10_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add11_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add11_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add11_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_sym_add11_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo0_mtree_madd4_2_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u1_m0_wo0_mtree_madd4_2_a : STD_LOGIC_VECTOR (51 downto 0);
    signal u1_m0_wo0_mtree_madd4_2_b : STD_LOGIC_VECTOR (59 downto 0);
    signal u1_m0_wo0_mtree_madd4_2_reset : std_logic;
    signal u1_m0_wo0_mtree_madd4_2_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u1_m0_wo0_mtree_madd4_1_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u1_m0_wo0_mtree_madd4_1_a : STD_LOGIC_VECTOR (51 downto 0);
    signal u1_m0_wo0_mtree_madd4_1_b : STD_LOGIC_VECTOR (59 downto 0);
    signal u1_m0_wo0_mtree_madd4_1_reset : std_logic;
    signal u1_m0_wo0_mtree_madd4_1_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u1_m0_wo0_mtree_madd4_0_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u1_m0_wo0_mtree_madd4_0_a : STD_LOGIC_VECTOR (51 downto 0);
    signal u1_m0_wo0_mtree_madd4_0_b : STD_LOGIC_VECTOR (59 downto 0);
    signal u1_m0_wo0_mtree_madd4_0_reset : std_logic;
    signal u1_m0_wo0_mtree_madd4_0_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u1_m0_wo0_mtree_add0_0_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u1_m0_wo0_mtree_add0_0_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u1_m0_wo0_mtree_add0_0_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u1_m0_wo0_mtree_add0_0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u1_m0_wo0_mtree_add1_0_a : STD_LOGIC_VECTOR (31 downto 0);
    signal u1_m0_wo0_mtree_add1_0_b : STD_LOGIC_VECTOR (31 downto 0);
    signal u1_m0_wo0_mtree_add1_0_o : STD_LOGIC_VECTOR (31 downto 0);
    signal u1_m0_wo0_mtree_add1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo1_dec0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec0_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec0_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm0_reset0 : std_logic;
    signal u0_m0_wo1_cm0_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm0_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm0_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm0_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_dec1_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec1_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec1_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm1_reset0 : std_logic;
    signal u0_m0_wo1_cm1_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm1_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm1_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm1_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_dec2_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec2_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec2_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm2_reset0 : std_logic;
    signal u0_m0_wo1_cm2_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm2_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm2_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm2_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm2_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_dec3_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec3_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec3_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm3_reset0 : std_logic;
    signal u0_m0_wo1_cm3_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm3_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm3_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm3_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm3_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_dec4_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec4_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec4_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm4_reset0 : std_logic;
    signal u0_m0_wo1_cm4_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm4_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm4_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm4_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm4_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_dec5_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec5_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec5_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm5_reset0 : std_logic;
    signal u0_m0_wo1_cm5_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm5_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm5_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm5_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm5_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_dec6_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec6_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec6_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm6_reset0 : std_logic;
    signal u0_m0_wo1_cm6_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm6_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm6_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm6_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm6_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_dec7_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec7_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec7_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm7_reset0 : std_logic;
    signal u0_m0_wo1_cm7_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm7_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm7_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm7_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm7_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_dec8_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec8_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec8_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm8_reset0 : std_logic;
    signal u0_m0_wo1_cm8_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm8_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm8_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm8_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm8_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_dec9_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec9_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec9_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm9_reset0 : std_logic;
    signal u0_m0_wo1_cm9_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm9_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm9_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm9_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm9_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_dec10_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec10_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec10_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm10_reset0 : std_logic;
    signal u0_m0_wo1_cm10_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm10_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm10_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm10_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm10_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_dec11_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec11_e : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_dec11_c : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm11_reset0 : std_logic;
    signal u0_m0_wo1_cm11_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm11_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm11_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo1_cm11_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_cm11_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u0_m0_wo1_sym_add0_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add0_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add0_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add0_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add2_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add2_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add2_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add2_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add3_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add3_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add3_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add3_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add4_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add4_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add4_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add4_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add5_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add5_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add5_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add5_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add6_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add6_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add6_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add6_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add7_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add7_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add7_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add7_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add8_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add8_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add8_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add8_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add9_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add9_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add9_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add9_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add10_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add10_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add10_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_sym_add10_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u0_m0_wo1_mtree_madd4_2_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo1_mtree_madd4_2_a : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo1_mtree_madd4_2_b : STD_LOGIC_VECTOR (59 downto 0);
    signal u0_m0_wo1_mtree_madd4_2_reset : std_logic;
    signal u0_m0_wo1_mtree_madd4_2_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo1_mtree_madd4_1_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo1_mtree_madd4_1_a : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo1_mtree_madd4_1_b : STD_LOGIC_VECTOR (59 downto 0);
    signal u0_m0_wo1_mtree_madd4_1_reset : std_logic;
    signal u0_m0_wo1_mtree_madd4_1_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo1_mtree_madd4_0_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo1_mtree_madd4_0_a : STD_LOGIC_VECTOR (51 downto 0);
    signal u0_m0_wo1_mtree_madd4_0_b : STD_LOGIC_VECTOR (59 downto 0);
    signal u0_m0_wo1_mtree_madd4_0_reset : std_logic;
    signal u0_m0_wo1_mtree_madd4_0_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo1_mtree_add0_0_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo1_mtree_add0_0_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo1_mtree_add0_0_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo1_mtree_add0_0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u0_m0_wo1_mtree_add1_0_a : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo1_mtree_add1_0_b : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo1_mtree_add1_0_o : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo1_mtree_add1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u1_m0_wo1_cm0_reset0 : std_logic;
    signal u1_m0_wo1_cm0_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm0_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm0_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm0_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm0_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm1_reset0 : std_logic;
    signal u1_m0_wo1_cm1_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm1_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm1_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm1_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm1_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm2_reset0 : std_logic;
    signal u1_m0_wo1_cm2_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm2_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm2_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm2_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm2_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm3_reset0 : std_logic;
    signal u1_m0_wo1_cm3_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm3_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm3_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm3_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm3_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm4_reset0 : std_logic;
    signal u1_m0_wo1_cm4_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm4_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm4_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm4_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm4_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm5_reset0 : std_logic;
    signal u1_m0_wo1_cm5_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm5_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm5_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm5_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm5_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm6_reset0 : std_logic;
    signal u1_m0_wo1_cm6_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm6_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm6_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm6_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm6_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm7_reset0 : std_logic;
    signal u1_m0_wo1_cm7_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm7_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm7_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm7_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm7_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm8_reset0 : std_logic;
    signal u1_m0_wo1_cm8_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm8_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm8_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm8_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm8_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm9_reset0 : std_logic;
    signal u1_m0_wo1_cm9_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm9_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm9_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm9_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm9_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm10_reset0 : std_logic;
    signal u1_m0_wo1_cm10_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm10_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm10_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm10_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm10_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm11_reset0 : std_logic;
    signal u1_m0_wo1_cm11_ia : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm11_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm11_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal u1_m0_wo1_cm11_iq : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_cm11_q : STD_LOGIC_VECTOR (12 downto 0);
    signal u1_m0_wo1_sym_add0_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add0_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add0_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add0_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add1_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add1_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add1_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add2_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add2_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add2_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add2_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add3_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add3_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add3_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add3_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add4_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add4_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add4_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add4_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add5_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add5_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add5_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add5_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add6_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add6_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add6_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add6_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add7_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add7_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add7_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add7_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add8_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add8_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add8_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add8_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add9_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add9_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add9_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add9_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add10_a : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add10_b : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add10_o : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_sym_add10_q : STD_LOGIC_VECTOR (14 downto 0);
    signal u1_m0_wo1_mtree_madd4_2_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u1_m0_wo1_mtree_madd4_2_a : STD_LOGIC_VECTOR (51 downto 0);
    signal u1_m0_wo1_mtree_madd4_2_b : STD_LOGIC_VECTOR (59 downto 0);
    signal u1_m0_wo1_mtree_madd4_2_reset : std_logic;
    signal u1_m0_wo1_mtree_madd4_2_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u1_m0_wo1_mtree_madd4_1_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u1_m0_wo1_mtree_madd4_1_a : STD_LOGIC_VECTOR (51 downto 0);
    signal u1_m0_wo1_mtree_madd4_1_b : STD_LOGIC_VECTOR (59 downto 0);
    signal u1_m0_wo1_mtree_madd4_1_reset : std_logic;
    signal u1_m0_wo1_mtree_madd4_1_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u1_m0_wo1_mtree_madd4_0_s1 : STD_LOGIC_VECTOR (29 downto 0);
    signal u1_m0_wo1_mtree_madd4_0_a : STD_LOGIC_VECTOR (51 downto 0);
    signal u1_m0_wo1_mtree_madd4_0_b : STD_LOGIC_VECTOR (59 downto 0);
    signal u1_m0_wo1_mtree_madd4_0_reset : std_logic;
    signal u1_m0_wo1_mtree_madd4_0_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u1_m0_wo1_mtree_add0_0_a : STD_LOGIC_VECTOR (30 downto 0);
    signal u1_m0_wo1_mtree_add0_0_b : STD_LOGIC_VECTOR (30 downto 0);
    signal u1_m0_wo1_mtree_add0_0_o : STD_LOGIC_VECTOR (30 downto 0);
    signal u1_m0_wo1_mtree_add0_0_q : STD_LOGIC_VECTOR (30 downto 0);
    signal u1_m0_wo1_mtree_add1_0_a : STD_LOGIC_VECTOR (31 downto 0);
    signal u1_m0_wo1_mtree_add1_0_b : STD_LOGIC_VECTOR (31 downto 0);
    signal u1_m0_wo1_mtree_add1_0_o : STD_LOGIC_VECTOR (31 downto 0);
    signal u1_m0_wo1_mtree_add1_0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal xIn_bankIn_0_q : STD_LOGIC_VECTOR (14 downto 0);
    signal xIn_bankIn_1_q : STD_LOGIC_VECTOR (14 downto 0);
    signal bank_u0_m0_wi0_wo0_in : STD_LOGIC_VECTOR (14 downto 0);
    signal bank_u0_m0_wi0_wo0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal data_u0_m0_wi0_wo0_in : STD_LOGIC_VECTOR (13 downto 0);
    signal data_u0_m0_wi0_wo0_b : STD_LOGIC_VECTOR (13 downto 0);
    signal bank_u1_m0_wi0_wo0_in : STD_LOGIC_VECTOR (14 downto 0);
    signal bank_u1_m0_wi0_wo0_b : STD_LOGIC_VECTOR (0 downto 0);
    signal data_u1_m0_wi0_wo0_in : STD_LOGIC_VECTOR (13 downto 0);
    signal data_u1_m0_wi0_wo0_b : STD_LOGIC_VECTOR (13 downto 0);

begin


    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- xIn(PORTIN,2)@10

    -- d_u0_m0_wo0_memread_q_11(DELAY,433)@10 + 1
    d_u0_m0_wo0_memread_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1)
    PORT MAP ( xin => xIn_v, xout => d_u0_m0_wo0_memread_q_11_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_11(DELAY,434)@10 + 1
    d_u0_m0_wo0_compute_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1)
    PORT MAP ( xin => xIn_v, xout => d_u0_m0_wo0_compute_q_11_q, clk => clk, aclr => areset );

    -- xIn_bankIn_1(BITJOIN,4)@10
    xIn_bankIn_1_q <= bankIn_1 & xIn_1;

    -- data_u1_m0_wi0_wo0(BITSELECT,115)@10
    data_u1_m0_wi0_wo0_in <= STD_LOGIC_VECTOR(xIn_bankIn_1_q(13 downto 0));
    data_u1_m0_wi0_wo0_b <= STD_LOGIC_VECTOR(data_u1_m0_wi0_wo0_in(13 downto 0));

    -- u1_m0_wo0_wi0_r0_delayr1(DELAY,121)@10
    u1_m0_wo0_wi0_r0_delayr1 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => data_u1_m0_wi0_wo0_b, xout => u1_m0_wo0_wi0_r0_delayr1_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr2(DELAY,122)@10
    u1_m0_wo0_wi0_r0_delayr2 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr1_q, xout => u1_m0_wo0_wi0_r0_delayr2_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr3(DELAY,123)@10
    u1_m0_wo0_wi0_r0_delayr3 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr2_q, xout => u1_m0_wo0_wi0_r0_delayr3_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr4(DELAY,124)@10
    u1_m0_wo0_wi0_r0_delayr4 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr3_q, xout => u1_m0_wo0_wi0_r0_delayr4_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr5(DELAY,125)@10
    u1_m0_wo0_wi0_r0_delayr5 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr4_q, xout => u1_m0_wo0_wi0_r0_delayr5_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr6(DELAY,126)@10
    u1_m0_wo0_wi0_r0_delayr6 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr5_q, xout => u1_m0_wo0_wi0_r0_delayr6_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr7(DELAY,127)@10
    u1_m0_wo0_wi0_r0_delayr7 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr6_q, xout => u1_m0_wo0_wi0_r0_delayr7_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr8(DELAY,128)@10
    u1_m0_wo0_wi0_r0_delayr8 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr7_q, xout => u1_m0_wo0_wi0_r0_delayr8_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr9(DELAY,129)@10
    u1_m0_wo0_wi0_r0_delayr9 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr8_q, xout => u1_m0_wo0_wi0_r0_delayr9_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr10(DELAY,130)@10
    u1_m0_wo0_wi0_r0_delayr10 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr9_q, xout => u1_m0_wo0_wi0_r0_delayr10_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr11(DELAY,131)@10
    u1_m0_wo0_wi0_r0_delayr11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr10_q, xout => u1_m0_wo0_wi0_r0_delayr11_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr12(DELAY,132)@10
    u1_m0_wo0_wi0_r0_delayr12 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr11_q, xout => u1_m0_wo0_wi0_r0_delayr12_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr13(DELAY,133)@10
    u1_m0_wo0_wi0_r0_delayr13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr12_q, xout => u1_m0_wo0_wi0_r0_delayr13_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr14(DELAY,134)@10
    u1_m0_wo0_wi0_r0_delayr14 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr13_q, xout => u1_m0_wo0_wi0_r0_delayr14_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr15(DELAY,135)@10
    u1_m0_wo0_wi0_r0_delayr15 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr14_q, xout => u1_m0_wo0_wi0_r0_delayr15_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr16(DELAY,136)@10
    u1_m0_wo0_wi0_r0_delayr16 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr15_q, xout => u1_m0_wo0_wi0_r0_delayr16_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr17(DELAY,137)@10
    u1_m0_wo0_wi0_r0_delayr17 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr16_q, xout => u1_m0_wo0_wi0_r0_delayr17_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr18(DELAY,138)@10
    u1_m0_wo0_wi0_r0_delayr18 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr17_q, xout => u1_m0_wo0_wi0_r0_delayr18_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr19(DELAY,139)@10
    u1_m0_wo0_wi0_r0_delayr19 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr18_q, xout => u1_m0_wo0_wi0_r0_delayr19_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u1_m0_wo0_wi0_r0_delayr19_q_11(DELAY,451)@10 + 1
    d_u1_m0_wo0_wi0_r0_delayr19_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr19_q, xout => d_u1_m0_wo0_wi0_r0_delayr19_q_11_q, clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr20(DELAY,140)@11
    u1_m0_wo0_wi0_r0_delayr20 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => d_u1_m0_wo0_wi0_r0_delayr19_q_11_q, xout => u1_m0_wo0_wi0_r0_delayr20_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr21(DELAY,141)@11
    u1_m0_wo0_wi0_r0_delayr21 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr20_q, xout => u1_m0_wo0_wi0_r0_delayr21_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_wi0_r0_delayr22(DELAY,142)@11
    u1_m0_wo0_wi0_r0_delayr22 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr21_q, xout => u1_m0_wo0_wi0_r0_delayr22_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- d_u1_m0_wo0_wi0_r0_phasedelay0_q_11(DELAY,446)@10 + 1
    d_u1_m0_wo0_wi0_r0_phasedelay0_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => data_u1_m0_wi0_wo0_b, xout => d_u1_m0_wo0_wi0_r0_phasedelay0_q_11_q, clk => clk, aclr => areset );

    -- u1_m0_wo1_sym_add0(ADD,395)@11 + 1
    u1_m0_wo1_sym_add0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => d_u1_m0_wo0_wi0_r0_phasedelay0_q_11_q(13)) & d_u1_m0_wo0_wi0_r0_phasedelay0_q_11_q));
    u1_m0_wo1_sym_add0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr22_q(13)) & u1_m0_wo0_wi0_r0_delayr22_q));
    u1_m0_wo1_sym_add0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo1_sym_add0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo1_sym_add0_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo1_sym_add0_a) + SIGNED(u1_m0_wo1_sym_add0_b));
        END IF;
    END PROCESS;
    u1_m0_wo1_sym_add0_q <= u1_m0_wo1_sym_add0_o(14 downto 0);

    -- bank_u1_m0_wi0_wo0(BITSELECT,114)@10
    bank_u1_m0_wi0_wo0_in <= STD_LOGIC_VECTOR(xIn_bankIn_1_q);
    bank_u1_m0_wi0_wo0_b <= STD_LOGIC_VECTOR(bank_u1_m0_wi0_wo0_in(14 downto 14));

    -- d_u1_m0_wo0_bank_phasedelay0_q_11(DELAY,452)@10 + 1
    d_u1_m0_wo0_bank_phasedelay0_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1)
    PORT MAP ( xin => bank_u1_m0_wi0_wo0_b, xout => d_u1_m0_wo0_bank_phasedelay0_q_11_q, clk => clk, aclr => areset );

    -- busIn(BUSIN,5)@10

    -- d_busIn_writedata_11(DELAY,432)@10 + 1
    d_busIn_writedata_11 : dspba_delay
    GENERIC MAP ( width => 16, depth => 1)
    PORT MAP ( xin => busIn_writedata, xout => d_busIn_writedata_11_q, clk => clk, aclr => h_areset );

    -- u0_m0_wo1_dec0(LOOKUP,258)@10 + 1
    u0_m0_wo1_dec0_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo1_dec0_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo1_dec0_q <= "0";
            u0_m0_wo1_dec0_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000000001" => u0_m0_wo1_dec0_q <= "0";
                                     u0_m0_wo1_dec0_e <= u0_m0_wo1_dec0_c;
                WHEN "1000011001" => u0_m0_wo1_dec0_q <= "1";
                                     u0_m0_wo1_dec0_e <= u0_m0_wo1_dec0_c;
                WHEN OTHERS => u0_m0_wo1_dec0_q <= (others => '-');
                               u0_m0_wo1_dec0_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo1_cm0(DUALMEM,361)@11 + 1
    u1_m0_wo1_cm0_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo1_cm0_aa <= u0_m0_wo1_dec0_q;
    u1_m0_wo1_cm0_ab <= d_u1_m0_wo0_bank_phasedelay0_q_11_q;
    u1_m0_wo1_cm0_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo1_cm0.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo1_cm0_aa,
        data_a => u1_m0_wo1_cm0_ia,
        wren_a => u0_m0_wo1_dec0_e(0),
        address_b => u1_m0_wo1_cm0_ab,
        q_b => u1_m0_wo1_cm0_iq
    );
    u1_m0_wo1_cm0_q <= u1_m0_wo1_cm0_iq(12 downto 0);

    -- d_u1_m0_wo0_wi0_r0_delayr1_q_11(DELAY,447)@10 + 1
    d_u1_m0_wo0_wi0_r0_delayr1_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr1_q, xout => d_u1_m0_wo0_wi0_r0_delayr1_q_11_q, clk => clk, aclr => areset );

    -- u1_m0_wo1_sym_add1(ADD,396)@11 + 1
    u1_m0_wo1_sym_add1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => d_u1_m0_wo0_wi0_r0_delayr1_q_11_q(13)) & d_u1_m0_wo0_wi0_r0_delayr1_q_11_q));
    u1_m0_wo1_sym_add1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr21_q(13)) & u1_m0_wo0_wi0_r0_delayr21_q));
    u1_m0_wo1_sym_add1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo1_sym_add1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo1_sym_add1_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo1_sym_add1_a) + SIGNED(u1_m0_wo1_sym_add1_b));
        END IF;
    END PROCESS;
    u1_m0_wo1_sym_add1_q <= u1_m0_wo1_sym_add1_o(14 downto 0);

    -- d_u1_m0_wo0_bank_delayr1_q_11(DELAY,453)@10 + 1
    d_u1_m0_wo0_bank_delayr1_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1)
    PORT MAP ( xin => bank_u1_m0_wi0_wo0_b, xout => d_u1_m0_wo0_bank_delayr1_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo1_dec1(LOOKUP,261)@10 + 1
    u0_m0_wo1_dec1_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo1_dec1_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo1_dec1_q <= "0";
            u0_m0_wo1_dec1_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000000011" => u0_m0_wo1_dec1_q <= "0";
                                     u0_m0_wo1_dec1_e <= u0_m0_wo1_dec1_c;
                WHEN "1000011011" => u0_m0_wo1_dec1_q <= "1";
                                     u0_m0_wo1_dec1_e <= u0_m0_wo1_dec1_c;
                WHEN OTHERS => u0_m0_wo1_dec1_q <= (others => '-');
                               u0_m0_wo1_dec1_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo1_cm1(DUALMEM,364)@11 + 1
    u1_m0_wo1_cm1_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo1_cm1_aa <= u0_m0_wo1_dec1_q;
    u1_m0_wo1_cm1_ab <= d_u1_m0_wo0_bank_delayr1_q_11_q;
    u1_m0_wo1_cm1_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo1_cm1.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo1_cm1_aa,
        data_a => u1_m0_wo1_cm1_ia,
        wren_a => u0_m0_wo1_dec1_e(0),
        address_b => u1_m0_wo1_cm1_ab,
        q_b => u1_m0_wo1_cm1_iq
    );
    u1_m0_wo1_cm1_q <= u1_m0_wo1_cm1_iq(12 downto 0);

    -- d_u1_m0_wo0_wi0_r0_delayr2_q_11(DELAY,448)@10 + 1
    d_u1_m0_wo0_wi0_r0_delayr2_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr2_q, xout => d_u1_m0_wo0_wi0_r0_delayr2_q_11_q, clk => clk, aclr => areset );

    -- u1_m0_wo1_sym_add2(ADD,397)@11 + 1
    u1_m0_wo1_sym_add2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => d_u1_m0_wo0_wi0_r0_delayr2_q_11_q(13)) & d_u1_m0_wo0_wi0_r0_delayr2_q_11_q));
    u1_m0_wo1_sym_add2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr20_q(13)) & u1_m0_wo0_wi0_r0_delayr20_q));
    u1_m0_wo1_sym_add2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo1_sym_add2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo1_sym_add2_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo1_sym_add2_a) + SIGNED(u1_m0_wo1_sym_add2_b));
        END IF;
    END PROCESS;
    u1_m0_wo1_sym_add2_q <= u1_m0_wo1_sym_add2_o(14 downto 0);

    -- d_u1_m0_wo0_bank_delayr2_q_11(DELAY,454)@10 + 1
    d_u1_m0_wo0_bank_delayr2_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1)
    PORT MAP ( xin => bank_u1_m0_wi0_wo0_b, xout => d_u1_m0_wo0_bank_delayr2_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo1_dec2(LOOKUP,264)@10 + 1
    u0_m0_wo1_dec2_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo1_dec2_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo1_dec2_q <= "0";
            u0_m0_wo1_dec2_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000000101" => u0_m0_wo1_dec2_q <= "0";
                                     u0_m0_wo1_dec2_e <= u0_m0_wo1_dec2_c;
                WHEN "1000011101" => u0_m0_wo1_dec2_q <= "1";
                                     u0_m0_wo1_dec2_e <= u0_m0_wo1_dec2_c;
                WHEN OTHERS => u0_m0_wo1_dec2_q <= (others => '-');
                               u0_m0_wo1_dec2_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo1_cm2(DUALMEM,367)@11 + 1
    u1_m0_wo1_cm2_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo1_cm2_aa <= u0_m0_wo1_dec2_q;
    u1_m0_wo1_cm2_ab <= d_u1_m0_wo0_bank_delayr2_q_11_q;
    u1_m0_wo1_cm2_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo1_cm2.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo1_cm2_aa,
        data_a => u1_m0_wo1_cm2_ia,
        wren_a => u0_m0_wo1_dec2_e(0),
        address_b => u1_m0_wo1_cm2_ab,
        q_b => u1_m0_wo1_cm2_iq
    );
    u1_m0_wo1_cm2_q <= u1_m0_wo1_cm2_iq(12 downto 0);

    -- d_u1_m0_wo0_wi0_r0_delayr3_q_11(DELAY,449)@10 + 1
    d_u1_m0_wo0_wi0_r0_delayr3_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr3_q, xout => d_u1_m0_wo0_wi0_r0_delayr3_q_11_q, clk => clk, aclr => areset );

    -- u1_m0_wo1_sym_add3(ADD,398)@11 + 1
    u1_m0_wo1_sym_add3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => d_u1_m0_wo0_wi0_r0_delayr3_q_11_q(13)) & d_u1_m0_wo0_wi0_r0_delayr3_q_11_q));
    u1_m0_wo1_sym_add3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => d_u1_m0_wo0_wi0_r0_delayr19_q_11_q(13)) & d_u1_m0_wo0_wi0_r0_delayr19_q_11_q));
    u1_m0_wo1_sym_add3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo1_sym_add3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo1_sym_add3_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo1_sym_add3_a) + SIGNED(u1_m0_wo1_sym_add3_b));
        END IF;
    END PROCESS;
    u1_m0_wo1_sym_add3_q <= u1_m0_wo1_sym_add3_o(14 downto 0);

    -- d_u1_m0_wo0_bank_delayr3_q_11(DELAY,455)@10 + 1
    d_u1_m0_wo0_bank_delayr3_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1)
    PORT MAP ( xin => bank_u1_m0_wi0_wo0_b, xout => d_u1_m0_wo0_bank_delayr3_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo1_dec3(LOOKUP,267)@10 + 1
    u0_m0_wo1_dec3_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo1_dec3_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo1_dec3_q <= "0";
            u0_m0_wo1_dec3_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000000111" => u0_m0_wo1_dec3_q <= "0";
                                     u0_m0_wo1_dec3_e <= u0_m0_wo1_dec3_c;
                WHEN "1000011111" => u0_m0_wo1_dec3_q <= "1";
                                     u0_m0_wo1_dec3_e <= u0_m0_wo1_dec3_c;
                WHEN OTHERS => u0_m0_wo1_dec3_q <= (others => '-');
                               u0_m0_wo1_dec3_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo1_cm3(DUALMEM,370)@11 + 1
    u1_m0_wo1_cm3_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo1_cm3_aa <= u0_m0_wo1_dec3_q;
    u1_m0_wo1_cm3_ab <= d_u1_m0_wo0_bank_delayr3_q_11_q;
    u1_m0_wo1_cm3_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo1_cm3.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo1_cm3_aa,
        data_a => u1_m0_wo1_cm3_ia,
        wren_a => u0_m0_wo1_dec3_e(0),
        address_b => u1_m0_wo1_cm3_ab,
        q_b => u1_m0_wo1_cm3_iq
    );
    u1_m0_wo1_cm3_q <= u1_m0_wo1_cm3_iq(12 downto 0);

    -- u1_m0_wo1_mtree_madd4_2(MULTADD,407)@12 + 3
    u1_m0_wo1_mtree_madd4_2_a <= STD_LOGIC_VECTOR(u1_m0_wo1_cm3_q & u1_m0_wo1_cm2_q & u1_m0_wo1_cm1_q & u1_m0_wo1_cm0_q);
    u1_m0_wo1_mtree_madd4_2_b <= STD_LOGIC_VECTOR(u1_m0_wo1_sym_add3_q & u1_m0_wo1_sym_add2_q & u1_m0_wo1_sym_add1_q & u1_m0_wo1_sym_add0_q);
    u1_m0_wo1_mtree_madd4_2_reset <= areset;
    u1_m0_wo1_mtree_madd4_2_component : altmult_add
    GENERIC MAP (
        lpm_type => "altmult_add",
        dedicated_multiplier_circuitry => "YES",
        intended_device_family => "Stratix IV",
        number_of_multipliers => 4,
        representation_a => "SIGNED",
        representation_b => "SIGNED",
        width_a => 13,
        width_b => 15,
        width_result => 30,
        multiplier1_direction => "ADD",
        multiplier3_direction => "ADD",
        port_addnsub1 => "PORT_CONNECTIVITY",
        port_addnsub3 => "PORT_UNUSED",
        port_signa => "PORT_UNUSED",
        port_signb => "PORT_UNUSED",
        input_register_a0 => "CLOCK0",
        input_register_a1 => "CLOCK0",
        input_register_a2 => "CLOCK0",
        input_register_a3 => "CLOCK0",
        input_register_b0 => "CLOCK0",
        input_register_b1 => "CLOCK0",
        input_register_b2 => "CLOCK0",
        input_register_b3 => "CLOCK0",
        input_source_a0 => "DATAA",
        input_source_a1 => "DATAA",
        input_source_a2 => "DATAA",
        input_source_a3 => "DATAA",
        input_source_b0 => "DATAB",
        input_source_b1 => "DATAB",
        input_source_b2 => "DATAB",
        input_source_b3 => "DATAB",
        input_aclr_a0 => "ACLR0",
        input_aclr_a1 => "ACLR0",
        input_aclr_a2 => "ACLR0",
        input_aclr_a3 => "ACLR0",
        input_aclr_b0 => "ACLR0",
        input_aclr_b1 => "ACLR0",
        input_aclr_b2 => "ACLR0",
        input_aclr_b3 => "ACLR0",
        addnsub_multiplier_register1 => "CLOCK0",
        addnsub_multiplier_register3 => "CLOCK0",
        addnsub_multiplier_aclr1 => "ACLR0",
        addnsub_multiplier_aclr3 => "ACLR0",
        signed_register_a => "CLOCK0",
        signed_register_b => "CLOCK0",
        signed_aclr_a => "ACLR0",
        signed_aclr_b => "ACLR0",
        multiplier_register0 => "CLOCK0",
        multiplier_aclr0 => "ACLR0",
        multiplier_register1 => "CLOCK0",
        multiplier_aclr1 => "ACLR0",
        multiplier_register2 => "CLOCK0",
        multiplier_aclr2 => "ACLR0",
        multiplier_register3 => "CLOCK0",
        multiplier_aclr3 => "ACLR0",
        addnsub_multiplier_pipeline_register1 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr1 => "ACLR0",
        addnsub_multiplier_pipeline_register3 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr3 => "ACLR0",
        signed_pipeline_register_a => "CLOCK0",
        signed_pipeline_register_b => "CLOCK0",
        signed_pipeline_aclr_a => "ACLR0",
        signed_pipeline_aclr_b => "ACLR0",
        output_register => "CLOCK0",
        output_aclr => "ACLR0"
    )
    PORT MAP (
        dataa => u1_m0_wo1_mtree_madd4_2_a,
        datab => u1_m0_wo1_mtree_madd4_2_b,
        clock0 => clk,
        aclr0 => u1_m0_wo1_mtree_madd4_2_reset,
        ena0 => VCC_q(0),
        result => u1_m0_wo1_mtree_madd4_2_s1
    );
    u1_m0_wo1_mtree_madd4_2_q <= u1_m0_wo1_mtree_madd4_2_s1;

    -- u1_m0_wo1_sym_add4(ADD,399)@10 + 1
    u1_m0_wo1_sym_add4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr4_q(13)) & u1_m0_wo0_wi0_r0_delayr4_q));
    u1_m0_wo1_sym_add4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr18_q(13)) & u1_m0_wo0_wi0_r0_delayr18_q));
    u1_m0_wo1_sym_add4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo1_sym_add4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo1_sym_add4_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo1_sym_add4_a) + SIGNED(u1_m0_wo1_sym_add4_b));
        END IF;
    END PROCESS;
    u1_m0_wo1_sym_add4_q <= u1_m0_wo1_sym_add4_o(14 downto 0);

    -- u0_m0_wo1_dec4(LOOKUP,270)@10 + 1
    u0_m0_wo1_dec4_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo1_dec4_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo1_dec4_q <= "0";
            u0_m0_wo1_dec4_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000001001" => u0_m0_wo1_dec4_q <= "0";
                                     u0_m0_wo1_dec4_e <= u0_m0_wo1_dec4_c;
                WHEN "1000100001" => u0_m0_wo1_dec4_q <= "1";
                                     u0_m0_wo1_dec4_e <= u0_m0_wo1_dec4_c;
                WHEN OTHERS => u0_m0_wo1_dec4_q <= (others => '-');
                               u0_m0_wo1_dec4_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo1_cm4(DUALMEM,373)@10 + 1
    u1_m0_wo1_cm4_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo1_cm4_aa <= u0_m0_wo1_dec4_q;
    u1_m0_wo1_cm4_ab <= bank_u1_m0_wi0_wo0_b;
    u1_m0_wo1_cm4_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo1_cm4.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo1_cm4_aa,
        data_a => u1_m0_wo1_cm4_ia,
        wren_a => u0_m0_wo1_dec4_e(0),
        address_b => u1_m0_wo1_cm4_ab,
        q_b => u1_m0_wo1_cm4_iq
    );
    u1_m0_wo1_cm4_q <= u1_m0_wo1_cm4_iq(12 downto 0);

    -- u1_m0_wo1_sym_add5(ADD,400)@10 + 1
    u1_m0_wo1_sym_add5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr5_q(13)) & u1_m0_wo0_wi0_r0_delayr5_q));
    u1_m0_wo1_sym_add5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr17_q(13)) & u1_m0_wo0_wi0_r0_delayr17_q));
    u1_m0_wo1_sym_add5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo1_sym_add5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo1_sym_add5_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo1_sym_add5_a) + SIGNED(u1_m0_wo1_sym_add5_b));
        END IF;
    END PROCESS;
    u1_m0_wo1_sym_add5_q <= u1_m0_wo1_sym_add5_o(14 downto 0);

    -- u0_m0_wo1_dec5(LOOKUP,273)@10 + 1
    u0_m0_wo1_dec5_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo1_dec5_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo1_dec5_q <= "0";
            u0_m0_wo1_dec5_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000001011" => u0_m0_wo1_dec5_q <= "0";
                                     u0_m0_wo1_dec5_e <= u0_m0_wo1_dec5_c;
                WHEN "1000100011" => u0_m0_wo1_dec5_q <= "1";
                                     u0_m0_wo1_dec5_e <= u0_m0_wo1_dec5_c;
                WHEN OTHERS => u0_m0_wo1_dec5_q <= (others => '-');
                               u0_m0_wo1_dec5_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo1_cm5(DUALMEM,376)@10 + 1
    u1_m0_wo1_cm5_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo1_cm5_aa <= u0_m0_wo1_dec5_q;
    u1_m0_wo1_cm5_ab <= bank_u1_m0_wi0_wo0_b;
    u1_m0_wo1_cm5_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo1_cm5.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo1_cm5_aa,
        data_a => u1_m0_wo1_cm5_ia,
        wren_a => u0_m0_wo1_dec5_e(0),
        address_b => u1_m0_wo1_cm5_ab,
        q_b => u1_m0_wo1_cm5_iq
    );
    u1_m0_wo1_cm5_q <= u1_m0_wo1_cm5_iq(12 downto 0);

    -- u1_m0_wo1_sym_add6(ADD,401)@10 + 1
    u1_m0_wo1_sym_add6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr6_q(13)) & u1_m0_wo0_wi0_r0_delayr6_q));
    u1_m0_wo1_sym_add6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr16_q(13)) & u1_m0_wo0_wi0_r0_delayr16_q));
    u1_m0_wo1_sym_add6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo1_sym_add6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo1_sym_add6_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo1_sym_add6_a) + SIGNED(u1_m0_wo1_sym_add6_b));
        END IF;
    END PROCESS;
    u1_m0_wo1_sym_add6_q <= u1_m0_wo1_sym_add6_o(14 downto 0);

    -- u0_m0_wo1_dec6(LOOKUP,276)@10 + 1
    u0_m0_wo1_dec6_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo1_dec6_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo1_dec6_q <= "0";
            u0_m0_wo1_dec6_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000001101" => u0_m0_wo1_dec6_q <= "0";
                                     u0_m0_wo1_dec6_e <= u0_m0_wo1_dec6_c;
                WHEN "1000100101" => u0_m0_wo1_dec6_q <= "1";
                                     u0_m0_wo1_dec6_e <= u0_m0_wo1_dec6_c;
                WHEN OTHERS => u0_m0_wo1_dec6_q <= (others => '-');
                               u0_m0_wo1_dec6_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo1_cm6(DUALMEM,379)@10 + 1
    u1_m0_wo1_cm6_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo1_cm6_aa <= u0_m0_wo1_dec6_q;
    u1_m0_wo1_cm6_ab <= bank_u1_m0_wi0_wo0_b;
    u1_m0_wo1_cm6_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo1_cm6.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo1_cm6_aa,
        data_a => u1_m0_wo1_cm6_ia,
        wren_a => u0_m0_wo1_dec6_e(0),
        address_b => u1_m0_wo1_cm6_ab,
        q_b => u1_m0_wo1_cm6_iq
    );
    u1_m0_wo1_cm6_q <= u1_m0_wo1_cm6_iq(12 downto 0);

    -- u1_m0_wo1_sym_add7(ADD,402)@10 + 1
    u1_m0_wo1_sym_add7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr7_q(13)) & u1_m0_wo0_wi0_r0_delayr7_q));
    u1_m0_wo1_sym_add7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr15_q(13)) & u1_m0_wo0_wi0_r0_delayr15_q));
    u1_m0_wo1_sym_add7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo1_sym_add7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo1_sym_add7_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo1_sym_add7_a) + SIGNED(u1_m0_wo1_sym_add7_b));
        END IF;
    END PROCESS;
    u1_m0_wo1_sym_add7_q <= u1_m0_wo1_sym_add7_o(14 downto 0);

    -- u0_m0_wo1_dec7(LOOKUP,279)@10 + 1
    u0_m0_wo1_dec7_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo1_dec7_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo1_dec7_q <= "0";
            u0_m0_wo1_dec7_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000001111" => u0_m0_wo1_dec7_q <= "0";
                                     u0_m0_wo1_dec7_e <= u0_m0_wo1_dec7_c;
                WHEN "1000100111" => u0_m0_wo1_dec7_q <= "1";
                                     u0_m0_wo1_dec7_e <= u0_m0_wo1_dec7_c;
                WHEN OTHERS => u0_m0_wo1_dec7_q <= (others => '-');
                               u0_m0_wo1_dec7_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo1_cm7(DUALMEM,382)@10 + 1
    u1_m0_wo1_cm7_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo1_cm7_aa <= u0_m0_wo1_dec7_q;
    u1_m0_wo1_cm7_ab <= bank_u1_m0_wi0_wo0_b;
    u1_m0_wo1_cm7_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo1_cm7.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo1_cm7_aa,
        data_a => u1_m0_wo1_cm7_ia,
        wren_a => u0_m0_wo1_dec7_e(0),
        address_b => u1_m0_wo1_cm7_ab,
        q_b => u1_m0_wo1_cm7_iq
    );
    u1_m0_wo1_cm7_q <= u1_m0_wo1_cm7_iq(12 downto 0);

    -- u1_m0_wo1_mtree_madd4_1(MULTADD,408)@11 + 3
    u1_m0_wo1_mtree_madd4_1_a <= STD_LOGIC_VECTOR(u1_m0_wo1_cm7_q & u1_m0_wo1_cm6_q & u1_m0_wo1_cm5_q & u1_m0_wo1_cm4_q);
    u1_m0_wo1_mtree_madd4_1_b <= STD_LOGIC_VECTOR(u1_m0_wo1_sym_add7_q & u1_m0_wo1_sym_add6_q & u1_m0_wo1_sym_add5_q & u1_m0_wo1_sym_add4_q);
    u1_m0_wo1_mtree_madd4_1_reset <= areset;
    u1_m0_wo1_mtree_madd4_1_component : altmult_add
    GENERIC MAP (
        lpm_type => "altmult_add",
        dedicated_multiplier_circuitry => "YES",
        intended_device_family => "Stratix IV",
        number_of_multipliers => 4,
        representation_a => "SIGNED",
        representation_b => "SIGNED",
        width_a => 13,
        width_b => 15,
        width_result => 30,
        multiplier1_direction => "ADD",
        multiplier3_direction => "ADD",
        port_addnsub1 => "PORT_CONNECTIVITY",
        port_addnsub3 => "PORT_UNUSED",
        port_signa => "PORT_UNUSED",
        port_signb => "PORT_UNUSED",
        input_register_a0 => "CLOCK0",
        input_register_a1 => "CLOCK0",
        input_register_a2 => "CLOCK0",
        input_register_a3 => "CLOCK0",
        input_register_b0 => "CLOCK0",
        input_register_b1 => "CLOCK0",
        input_register_b2 => "CLOCK0",
        input_register_b3 => "CLOCK0",
        input_source_a0 => "DATAA",
        input_source_a1 => "DATAA",
        input_source_a2 => "DATAA",
        input_source_a3 => "DATAA",
        input_source_b0 => "DATAB",
        input_source_b1 => "DATAB",
        input_source_b2 => "DATAB",
        input_source_b3 => "DATAB",
        input_aclr_a0 => "ACLR0",
        input_aclr_a1 => "ACLR0",
        input_aclr_a2 => "ACLR0",
        input_aclr_a3 => "ACLR0",
        input_aclr_b0 => "ACLR0",
        input_aclr_b1 => "ACLR0",
        input_aclr_b2 => "ACLR0",
        input_aclr_b3 => "ACLR0",
        addnsub_multiplier_register1 => "CLOCK0",
        addnsub_multiplier_register3 => "CLOCK0",
        addnsub_multiplier_aclr1 => "ACLR0",
        addnsub_multiplier_aclr3 => "ACLR0",
        signed_register_a => "CLOCK0",
        signed_register_b => "CLOCK0",
        signed_aclr_a => "ACLR0",
        signed_aclr_b => "ACLR0",
        multiplier_register0 => "CLOCK0",
        multiplier_aclr0 => "ACLR0",
        multiplier_register1 => "CLOCK0",
        multiplier_aclr1 => "ACLR0",
        multiplier_register2 => "CLOCK0",
        multiplier_aclr2 => "ACLR0",
        multiplier_register3 => "CLOCK0",
        multiplier_aclr3 => "ACLR0",
        addnsub_multiplier_pipeline_register1 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr1 => "ACLR0",
        addnsub_multiplier_pipeline_register3 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr3 => "ACLR0",
        signed_pipeline_register_a => "CLOCK0",
        signed_pipeline_register_b => "CLOCK0",
        signed_pipeline_aclr_a => "ACLR0",
        signed_pipeline_aclr_b => "ACLR0",
        output_register => "CLOCK0",
        output_aclr => "ACLR0"
    )
    PORT MAP (
        dataa => u1_m0_wo1_mtree_madd4_1_a,
        datab => u1_m0_wo1_mtree_madd4_1_b,
        clock0 => clk,
        aclr0 => u1_m0_wo1_mtree_madd4_1_reset,
        ena0 => VCC_q(0),
        result => u1_m0_wo1_mtree_madd4_1_s1
    );
    u1_m0_wo1_mtree_madd4_1_q <= u1_m0_wo1_mtree_madd4_1_s1;

    -- u1_m0_wo1_sym_add8(ADD,403)@10 + 1
    u1_m0_wo1_sym_add8_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr8_q(13)) & u1_m0_wo0_wi0_r0_delayr8_q));
    u1_m0_wo1_sym_add8_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr14_q(13)) & u1_m0_wo0_wi0_r0_delayr14_q));
    u1_m0_wo1_sym_add8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo1_sym_add8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo1_sym_add8_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo1_sym_add8_a) + SIGNED(u1_m0_wo1_sym_add8_b));
        END IF;
    END PROCESS;
    u1_m0_wo1_sym_add8_q <= u1_m0_wo1_sym_add8_o(14 downto 0);

    -- u0_m0_wo1_dec8(LOOKUP,282)@10 + 1
    u0_m0_wo1_dec8_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo1_dec8_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo1_dec8_q <= "0";
            u0_m0_wo1_dec8_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000010001" => u0_m0_wo1_dec8_q <= "0";
                                     u0_m0_wo1_dec8_e <= u0_m0_wo1_dec8_c;
                WHEN "1000101001" => u0_m0_wo1_dec8_q <= "1";
                                     u0_m0_wo1_dec8_e <= u0_m0_wo1_dec8_c;
                WHEN OTHERS => u0_m0_wo1_dec8_q <= (others => '-');
                               u0_m0_wo1_dec8_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo1_cm8(DUALMEM,385)@10 + 1
    u1_m0_wo1_cm8_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo1_cm8_aa <= u0_m0_wo1_dec8_q;
    u1_m0_wo1_cm8_ab <= bank_u1_m0_wi0_wo0_b;
    u1_m0_wo1_cm8_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo1_cm8.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo1_cm8_aa,
        data_a => u1_m0_wo1_cm8_ia,
        wren_a => u0_m0_wo1_dec8_e(0),
        address_b => u1_m0_wo1_cm8_ab,
        q_b => u1_m0_wo1_cm8_iq
    );
    u1_m0_wo1_cm8_q <= u1_m0_wo1_cm8_iq(12 downto 0);

    -- u1_m0_wo1_sym_add9(ADD,404)@10 + 1
    u1_m0_wo1_sym_add9_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr9_q(13)) & u1_m0_wo0_wi0_r0_delayr9_q));
    u1_m0_wo1_sym_add9_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr13_q(13)) & u1_m0_wo0_wi0_r0_delayr13_q));
    u1_m0_wo1_sym_add9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo1_sym_add9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo1_sym_add9_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo1_sym_add9_a) + SIGNED(u1_m0_wo1_sym_add9_b));
        END IF;
    END PROCESS;
    u1_m0_wo1_sym_add9_q <= u1_m0_wo1_sym_add9_o(14 downto 0);

    -- u0_m0_wo1_dec9(LOOKUP,285)@10 + 1
    u0_m0_wo1_dec9_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo1_dec9_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo1_dec9_q <= "0";
            u0_m0_wo1_dec9_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000010011" => u0_m0_wo1_dec9_q <= "0";
                                     u0_m0_wo1_dec9_e <= u0_m0_wo1_dec9_c;
                WHEN "1000101011" => u0_m0_wo1_dec9_q <= "1";
                                     u0_m0_wo1_dec9_e <= u0_m0_wo1_dec9_c;
                WHEN OTHERS => u0_m0_wo1_dec9_q <= (others => '-');
                               u0_m0_wo1_dec9_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo1_cm9(DUALMEM,388)@10 + 1
    u1_m0_wo1_cm9_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo1_cm9_aa <= u0_m0_wo1_dec9_q;
    u1_m0_wo1_cm9_ab <= bank_u1_m0_wi0_wo0_b;
    u1_m0_wo1_cm9_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo1_cm9.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo1_cm9_aa,
        data_a => u1_m0_wo1_cm9_ia,
        wren_a => u0_m0_wo1_dec9_e(0),
        address_b => u1_m0_wo1_cm9_ab,
        q_b => u1_m0_wo1_cm9_iq
    );
    u1_m0_wo1_cm9_q <= u1_m0_wo1_cm9_iq(12 downto 0);

    -- u1_m0_wo1_sym_add10(ADD,405)@10 + 1
    u1_m0_wo1_sym_add10_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr10_q(13)) & u1_m0_wo0_wi0_r0_delayr10_q));
    u1_m0_wo1_sym_add10_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr12_q(13)) & u1_m0_wo0_wi0_r0_delayr12_q));
    u1_m0_wo1_sym_add10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo1_sym_add10_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo1_sym_add10_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo1_sym_add10_a) + SIGNED(u1_m0_wo1_sym_add10_b));
        END IF;
    END PROCESS;
    u1_m0_wo1_sym_add10_q <= u1_m0_wo1_sym_add10_o(14 downto 0);

    -- u0_m0_wo1_dec10(LOOKUP,288)@10 + 1
    u0_m0_wo1_dec10_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo1_dec10_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo1_dec10_q <= "0";
            u0_m0_wo1_dec10_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000010101" => u0_m0_wo1_dec10_q <= "0";
                                     u0_m0_wo1_dec10_e <= u0_m0_wo1_dec10_c;
                WHEN "1000101101" => u0_m0_wo1_dec10_q <= "1";
                                     u0_m0_wo1_dec10_e <= u0_m0_wo1_dec10_c;
                WHEN OTHERS => u0_m0_wo1_dec10_q <= (others => '-');
                               u0_m0_wo1_dec10_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo1_cm10(DUALMEM,391)@10 + 1
    u1_m0_wo1_cm10_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo1_cm10_aa <= u0_m0_wo1_dec10_q;
    u1_m0_wo1_cm10_ab <= bank_u1_m0_wi0_wo0_b;
    u1_m0_wo1_cm10_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo1_cm10.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo1_cm10_aa,
        data_a => u1_m0_wo1_cm10_ia,
        wren_a => u0_m0_wo1_dec10_e(0),
        address_b => u1_m0_wo1_cm10_ab,
        q_b => u1_m0_wo1_cm10_iq
    );
    u1_m0_wo1_cm10_q <= u1_m0_wo1_cm10_iq(12 downto 0);

    -- d_u1_m0_wo0_wi0_r0_delayr11_q_11(DELAY,450)@10 + 1
    d_u1_m0_wo0_wi0_r0_delayr11_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr11_q, xout => d_u1_m0_wo0_wi0_r0_delayr11_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo1_dec11(LOOKUP,291)@10 + 1
    u0_m0_wo1_dec11_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo1_dec11_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo1_dec11_q <= "0";
            u0_m0_wo1_dec11_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000010111" => u0_m0_wo1_dec11_q <= "0";
                                     u0_m0_wo1_dec11_e <= u0_m0_wo1_dec11_c;
                WHEN "1000101111" => u0_m0_wo1_dec11_q <= "1";
                                     u0_m0_wo1_dec11_e <= u0_m0_wo1_dec11_c;
                WHEN OTHERS => u0_m0_wo1_dec11_q <= (others => '-');
                               u0_m0_wo1_dec11_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo1_cm11(DUALMEM,394)@10 + 1
    u1_m0_wo1_cm11_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo1_cm11_aa <= u0_m0_wo1_dec11_q;
    u1_m0_wo1_cm11_ab <= bank_u1_m0_wi0_wo0_b;
    u1_m0_wo1_cm11_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo1_cm11.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo1_cm11_aa,
        data_a => u1_m0_wo1_cm11_ia,
        wren_a => u0_m0_wo1_dec11_e(0),
        address_b => u1_m0_wo1_cm11_ab,
        q_b => u1_m0_wo1_cm11_iq
    );
    u1_m0_wo1_cm11_q <= u1_m0_wo1_cm11_iq(12 downto 0);

    -- u1_m0_wo1_mtree_madd4_0(MULTADD,409)@11 + 3
    u1_m0_wo1_mtree_madd4_0_a <= STD_LOGIC_VECTOR(u1_m0_wo1_cm11_q & u1_m0_wo1_cm10_q & u1_m0_wo1_cm9_q & u1_m0_wo1_cm8_q);
    u1_m0_wo1_mtree_madd4_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => d_u1_m0_wo0_wi0_r0_delayr11_q_11_q(13)) & d_u1_m0_wo0_wi0_r0_delayr11_q_11_q) & u1_m0_wo1_sym_add10_q & u1_m0_wo1_sym_add9_q & u1_m0_wo1_sym_add8_q);
    u1_m0_wo1_mtree_madd4_0_reset <= areset;
    u1_m0_wo1_mtree_madd4_0_component : altmult_add
    GENERIC MAP (
        lpm_type => "altmult_add",
        dedicated_multiplier_circuitry => "YES",
        intended_device_family => "Stratix IV",
        number_of_multipliers => 4,
        representation_a => "SIGNED",
        representation_b => "SIGNED",
        width_a => 13,
        width_b => 15,
        width_result => 30,
        multiplier1_direction => "ADD",
        multiplier3_direction => "ADD",
        port_addnsub1 => "PORT_CONNECTIVITY",
        port_addnsub3 => "PORT_UNUSED",
        port_signa => "PORT_UNUSED",
        port_signb => "PORT_UNUSED",
        input_register_a0 => "CLOCK0",
        input_register_a1 => "CLOCK0",
        input_register_a2 => "CLOCK0",
        input_register_a3 => "CLOCK0",
        input_register_b0 => "CLOCK0",
        input_register_b1 => "CLOCK0",
        input_register_b2 => "CLOCK0",
        input_register_b3 => "CLOCK0",
        input_source_a0 => "DATAA",
        input_source_a1 => "DATAA",
        input_source_a2 => "DATAA",
        input_source_a3 => "DATAA",
        input_source_b0 => "DATAB",
        input_source_b1 => "DATAB",
        input_source_b2 => "DATAB",
        input_source_b3 => "DATAB",
        input_aclr_a0 => "ACLR0",
        input_aclr_a1 => "ACLR0",
        input_aclr_a2 => "ACLR0",
        input_aclr_a3 => "ACLR0",
        input_aclr_b0 => "ACLR0",
        input_aclr_b1 => "ACLR0",
        input_aclr_b2 => "ACLR0",
        input_aclr_b3 => "ACLR0",
        addnsub_multiplier_register1 => "CLOCK0",
        addnsub_multiplier_register3 => "CLOCK0",
        addnsub_multiplier_aclr1 => "ACLR0",
        addnsub_multiplier_aclr3 => "ACLR0",
        signed_register_a => "CLOCK0",
        signed_register_b => "CLOCK0",
        signed_aclr_a => "ACLR0",
        signed_aclr_b => "ACLR0",
        multiplier_register0 => "CLOCK0",
        multiplier_aclr0 => "ACLR0",
        multiplier_register1 => "CLOCK0",
        multiplier_aclr1 => "ACLR0",
        multiplier_register2 => "CLOCK0",
        multiplier_aclr2 => "ACLR0",
        multiplier_register3 => "CLOCK0",
        multiplier_aclr3 => "ACLR0",
        addnsub_multiplier_pipeline_register1 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr1 => "ACLR0",
        addnsub_multiplier_pipeline_register3 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr3 => "ACLR0",
        signed_pipeline_register_a => "CLOCK0",
        signed_pipeline_register_b => "CLOCK0",
        signed_pipeline_aclr_a => "ACLR0",
        signed_pipeline_aclr_b => "ACLR0",
        output_register => "CLOCK0",
        output_aclr => "ACLR0"
    )
    PORT MAP (
        dataa => u1_m0_wo1_mtree_madd4_0_a,
        datab => u1_m0_wo1_mtree_madd4_0_b,
        clock0 => clk,
        aclr0 => u1_m0_wo1_mtree_madd4_0_reset,
        ena0 => VCC_q(0),
        result => u1_m0_wo1_mtree_madd4_0_s1
    );
    u1_m0_wo1_mtree_madd4_0_q <= u1_m0_wo1_mtree_madd4_0_s1;

    -- u1_m0_wo1_mtree_add0_0(ADD,410)@14 + 1
    u1_m0_wo1_mtree_add0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u1_m0_wo1_mtree_madd4_0_q(29)) & u1_m0_wo1_mtree_madd4_0_q));
    u1_m0_wo1_mtree_add0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u1_m0_wo1_mtree_madd4_1_q(29)) & u1_m0_wo1_mtree_madd4_1_q));
    u1_m0_wo1_mtree_add0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo1_mtree_add0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo1_mtree_add0_0_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo1_mtree_add0_0_a) + SIGNED(u1_m0_wo1_mtree_add0_0_b));
        END IF;
    END PROCESS;
    u1_m0_wo1_mtree_add0_0_q <= u1_m0_wo1_mtree_add0_0_o(30 downto 0);

    -- u1_m0_wo1_mtree_add1_0(ADD,411)@15 + 1
    u1_m0_wo1_mtree_add1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => u1_m0_wo1_mtree_add0_0_q(30)) & u1_m0_wo1_mtree_add0_0_q));
    u1_m0_wo1_mtree_add1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 30 => u1_m0_wo1_mtree_madd4_2_q(29)) & u1_m0_wo1_mtree_madd4_2_q));
    u1_m0_wo1_mtree_add1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo1_mtree_add1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo1_mtree_add1_0_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo1_mtree_add1_0_a) + SIGNED(u1_m0_wo1_mtree_add1_0_b));
        END IF;
    END PROCESS;
    u1_m0_wo1_mtree_add1_0_q <= u1_m0_wo1_mtree_add1_0_o(31 downto 0);

    -- u1_m0_wo0_wi0_r0_delayr23(DELAY,143)@11
    u1_m0_wo0_wi0_r0_delayr23 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u1_m0_wo0_wi0_r0_delayr22_q, xout => u1_m0_wo0_wi0_r0_delayr23_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u1_m0_wo0_sym_add0(ADD,193)@11 + 1
    u1_m0_wo0_sym_add0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => d_u1_m0_wo0_wi0_r0_phasedelay0_q_11_q(13)) & d_u1_m0_wo0_wi0_r0_phasedelay0_q_11_q));
    u1_m0_wo0_sym_add0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr23_q(13)) & u1_m0_wo0_wi0_r0_delayr23_q));
    u1_m0_wo0_sym_add0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_sym_add0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_sym_add0_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_sym_add0_a) + SIGNED(u1_m0_wo0_sym_add0_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_sym_add0_q <= u1_m0_wo0_sym_add0_o(14 downto 0);

    -- u0_m0_wo0_dec0(LOOKUP,56)@10 + 1
    u0_m0_wo0_dec0_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo0_dec0_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo0_dec0_q <= "0";
            u0_m0_wo0_dec0_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000000000" => u0_m0_wo0_dec0_q <= "0";
                                     u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN "1000011000" => u0_m0_wo0_dec0_q <= "1";
                                     u0_m0_wo0_dec0_e <= u0_m0_wo0_dec0_c;
                WHEN OTHERS => u0_m0_wo0_dec0_q <= (others => '-');
                               u0_m0_wo0_dec0_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo0_cm0(DUALMEM,159)@11 + 1
    u1_m0_wo0_cm0_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo0_cm0_aa <= u0_m0_wo0_dec0_q;
    u1_m0_wo0_cm0_ab <= d_u1_m0_wo0_bank_phasedelay0_q_11_q;
    u1_m0_wo0_cm0_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo0_cm0.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo0_cm0_aa,
        data_a => u1_m0_wo0_cm0_ia,
        wren_a => u0_m0_wo0_dec0_e(0),
        address_b => u1_m0_wo0_cm0_ab,
        q_b => u1_m0_wo0_cm0_iq
    );
    u1_m0_wo0_cm0_q <= u1_m0_wo0_cm0_iq(12 downto 0);

    -- u1_m0_wo0_sym_add1(ADD,194)@11 + 1
    u1_m0_wo0_sym_add1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => d_u1_m0_wo0_wi0_r0_delayr1_q_11_q(13)) & d_u1_m0_wo0_wi0_r0_delayr1_q_11_q));
    u1_m0_wo0_sym_add1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr22_q(13)) & u1_m0_wo0_wi0_r0_delayr22_q));
    u1_m0_wo0_sym_add1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_sym_add1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_sym_add1_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_sym_add1_a) + SIGNED(u1_m0_wo0_sym_add1_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_sym_add1_q <= u1_m0_wo0_sym_add1_o(14 downto 0);

    -- u0_m0_wo0_dec1(LOOKUP,59)@10 + 1
    u0_m0_wo0_dec1_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo0_dec1_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo0_dec1_q <= "0";
            u0_m0_wo0_dec1_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000000010" => u0_m0_wo0_dec1_q <= "0";
                                     u0_m0_wo0_dec1_e <= u0_m0_wo0_dec1_c;
                WHEN "1000011010" => u0_m0_wo0_dec1_q <= "1";
                                     u0_m0_wo0_dec1_e <= u0_m0_wo0_dec1_c;
                WHEN OTHERS => u0_m0_wo0_dec1_q <= (others => '-');
                               u0_m0_wo0_dec1_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo0_cm1(DUALMEM,162)@11 + 1
    u1_m0_wo0_cm1_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo0_cm1_aa <= u0_m0_wo0_dec1_q;
    u1_m0_wo0_cm1_ab <= d_u1_m0_wo0_bank_delayr1_q_11_q;
    u1_m0_wo0_cm1_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo0_cm1.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo0_cm1_aa,
        data_a => u1_m0_wo0_cm1_ia,
        wren_a => u0_m0_wo0_dec1_e(0),
        address_b => u1_m0_wo0_cm1_ab,
        q_b => u1_m0_wo0_cm1_iq
    );
    u1_m0_wo0_cm1_q <= u1_m0_wo0_cm1_iq(12 downto 0);

    -- u1_m0_wo0_sym_add2(ADD,195)@11 + 1
    u1_m0_wo0_sym_add2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => d_u1_m0_wo0_wi0_r0_delayr2_q_11_q(13)) & d_u1_m0_wo0_wi0_r0_delayr2_q_11_q));
    u1_m0_wo0_sym_add2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr21_q(13)) & u1_m0_wo0_wi0_r0_delayr21_q));
    u1_m0_wo0_sym_add2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_sym_add2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_sym_add2_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_sym_add2_a) + SIGNED(u1_m0_wo0_sym_add2_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_sym_add2_q <= u1_m0_wo0_sym_add2_o(14 downto 0);

    -- u0_m0_wo0_dec2(LOOKUP,62)@10 + 1
    u0_m0_wo0_dec2_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo0_dec2_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo0_dec2_q <= "0";
            u0_m0_wo0_dec2_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000000100" => u0_m0_wo0_dec2_q <= "0";
                                     u0_m0_wo0_dec2_e <= u0_m0_wo0_dec2_c;
                WHEN "1000011100" => u0_m0_wo0_dec2_q <= "1";
                                     u0_m0_wo0_dec2_e <= u0_m0_wo0_dec2_c;
                WHEN OTHERS => u0_m0_wo0_dec2_q <= (others => '-');
                               u0_m0_wo0_dec2_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo0_cm2(DUALMEM,165)@11 + 1
    u1_m0_wo0_cm2_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo0_cm2_aa <= u0_m0_wo0_dec2_q;
    u1_m0_wo0_cm2_ab <= d_u1_m0_wo0_bank_delayr2_q_11_q;
    u1_m0_wo0_cm2_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo0_cm2.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo0_cm2_aa,
        data_a => u1_m0_wo0_cm2_ia,
        wren_a => u0_m0_wo0_dec2_e(0),
        address_b => u1_m0_wo0_cm2_ab,
        q_b => u1_m0_wo0_cm2_iq
    );
    u1_m0_wo0_cm2_q <= u1_m0_wo0_cm2_iq(12 downto 0);

    -- u1_m0_wo0_sym_add3(ADD,196)@11 + 1
    u1_m0_wo0_sym_add3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => d_u1_m0_wo0_wi0_r0_delayr3_q_11_q(13)) & d_u1_m0_wo0_wi0_r0_delayr3_q_11_q));
    u1_m0_wo0_sym_add3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr20_q(13)) & u1_m0_wo0_wi0_r0_delayr20_q));
    u1_m0_wo0_sym_add3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_sym_add3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_sym_add3_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_sym_add3_a) + SIGNED(u1_m0_wo0_sym_add3_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_sym_add3_q <= u1_m0_wo0_sym_add3_o(14 downto 0);

    -- u0_m0_wo0_dec3(LOOKUP,65)@10 + 1
    u0_m0_wo0_dec3_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo0_dec3_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo0_dec3_q <= "0";
            u0_m0_wo0_dec3_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000000110" => u0_m0_wo0_dec3_q <= "0";
                                     u0_m0_wo0_dec3_e <= u0_m0_wo0_dec3_c;
                WHEN "1000011110" => u0_m0_wo0_dec3_q <= "1";
                                     u0_m0_wo0_dec3_e <= u0_m0_wo0_dec3_c;
                WHEN OTHERS => u0_m0_wo0_dec3_q <= (others => '-');
                               u0_m0_wo0_dec3_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo0_cm3(DUALMEM,168)@11 + 1
    u1_m0_wo0_cm3_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo0_cm3_aa <= u0_m0_wo0_dec3_q;
    u1_m0_wo0_cm3_ab <= d_u1_m0_wo0_bank_delayr3_q_11_q;
    u1_m0_wo0_cm3_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo0_cm3.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo0_cm3_aa,
        data_a => u1_m0_wo0_cm3_ia,
        wren_a => u0_m0_wo0_dec3_e(0),
        address_b => u1_m0_wo0_cm3_ab,
        q_b => u1_m0_wo0_cm3_iq
    );
    u1_m0_wo0_cm3_q <= u1_m0_wo0_cm3_iq(12 downto 0);

    -- u1_m0_wo0_mtree_madd4_2(MULTADD,205)@12 + 3
    u1_m0_wo0_mtree_madd4_2_a <= STD_LOGIC_VECTOR(u1_m0_wo0_cm3_q & u1_m0_wo0_cm2_q & u1_m0_wo0_cm1_q & u1_m0_wo0_cm0_q);
    u1_m0_wo0_mtree_madd4_2_b <= STD_LOGIC_VECTOR(u1_m0_wo0_sym_add3_q & u1_m0_wo0_sym_add2_q & u1_m0_wo0_sym_add1_q & u1_m0_wo0_sym_add0_q);
    u1_m0_wo0_mtree_madd4_2_reset <= areset;
    u1_m0_wo0_mtree_madd4_2_component : altmult_add
    GENERIC MAP (
        lpm_type => "altmult_add",
        dedicated_multiplier_circuitry => "YES",
        intended_device_family => "Stratix IV",
        number_of_multipliers => 4,
        representation_a => "SIGNED",
        representation_b => "SIGNED",
        width_a => 13,
        width_b => 15,
        width_result => 30,
        multiplier1_direction => "ADD",
        multiplier3_direction => "ADD",
        port_addnsub1 => "PORT_CONNECTIVITY",
        port_addnsub3 => "PORT_UNUSED",
        port_signa => "PORT_UNUSED",
        port_signb => "PORT_UNUSED",
        input_register_a0 => "CLOCK0",
        input_register_a1 => "CLOCK0",
        input_register_a2 => "CLOCK0",
        input_register_a3 => "CLOCK0",
        input_register_b0 => "CLOCK0",
        input_register_b1 => "CLOCK0",
        input_register_b2 => "CLOCK0",
        input_register_b3 => "CLOCK0",
        input_source_a0 => "DATAA",
        input_source_a1 => "DATAA",
        input_source_a2 => "DATAA",
        input_source_a3 => "DATAA",
        input_source_b0 => "DATAB",
        input_source_b1 => "DATAB",
        input_source_b2 => "DATAB",
        input_source_b3 => "DATAB",
        input_aclr_a0 => "ACLR0",
        input_aclr_a1 => "ACLR0",
        input_aclr_a2 => "ACLR0",
        input_aclr_a3 => "ACLR0",
        input_aclr_b0 => "ACLR0",
        input_aclr_b1 => "ACLR0",
        input_aclr_b2 => "ACLR0",
        input_aclr_b3 => "ACLR0",
        addnsub_multiplier_register1 => "CLOCK0",
        addnsub_multiplier_register3 => "CLOCK0",
        addnsub_multiplier_aclr1 => "ACLR0",
        addnsub_multiplier_aclr3 => "ACLR0",
        signed_register_a => "CLOCK0",
        signed_register_b => "CLOCK0",
        signed_aclr_a => "ACLR0",
        signed_aclr_b => "ACLR0",
        multiplier_register0 => "CLOCK0",
        multiplier_aclr0 => "ACLR0",
        multiplier_register1 => "CLOCK0",
        multiplier_aclr1 => "ACLR0",
        multiplier_register2 => "CLOCK0",
        multiplier_aclr2 => "ACLR0",
        multiplier_register3 => "CLOCK0",
        multiplier_aclr3 => "ACLR0",
        addnsub_multiplier_pipeline_register1 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr1 => "ACLR0",
        addnsub_multiplier_pipeline_register3 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr3 => "ACLR0",
        signed_pipeline_register_a => "CLOCK0",
        signed_pipeline_register_b => "CLOCK0",
        signed_pipeline_aclr_a => "ACLR0",
        signed_pipeline_aclr_b => "ACLR0",
        output_register => "CLOCK0",
        output_aclr => "ACLR0"
    )
    PORT MAP (
        dataa => u1_m0_wo0_mtree_madd4_2_a,
        datab => u1_m0_wo0_mtree_madd4_2_b,
        clock0 => clk,
        aclr0 => u1_m0_wo0_mtree_madd4_2_reset,
        ena0 => VCC_q(0),
        result => u1_m0_wo0_mtree_madd4_2_s1
    );
    u1_m0_wo0_mtree_madd4_2_q <= u1_m0_wo0_mtree_madd4_2_s1;

    -- u1_m0_wo0_sym_add4(ADD,197)@10 + 1
    u1_m0_wo0_sym_add4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr4_q(13)) & u1_m0_wo0_wi0_r0_delayr4_q));
    u1_m0_wo0_sym_add4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr19_q(13)) & u1_m0_wo0_wi0_r0_delayr19_q));
    u1_m0_wo0_sym_add4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_sym_add4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_sym_add4_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_sym_add4_a) + SIGNED(u1_m0_wo0_sym_add4_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_sym_add4_q <= u1_m0_wo0_sym_add4_o(14 downto 0);

    -- u0_m0_wo0_dec4(LOOKUP,68)@10 + 1
    u0_m0_wo0_dec4_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo0_dec4_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo0_dec4_q <= "0";
            u0_m0_wo0_dec4_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000001000" => u0_m0_wo0_dec4_q <= "0";
                                     u0_m0_wo0_dec4_e <= u0_m0_wo0_dec4_c;
                WHEN "1000100000" => u0_m0_wo0_dec4_q <= "1";
                                     u0_m0_wo0_dec4_e <= u0_m0_wo0_dec4_c;
                WHEN OTHERS => u0_m0_wo0_dec4_q <= (others => '-');
                               u0_m0_wo0_dec4_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo0_cm4(DUALMEM,171)@10 + 1
    u1_m0_wo0_cm4_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo0_cm4_aa <= u0_m0_wo0_dec4_q;
    u1_m0_wo0_cm4_ab <= bank_u1_m0_wi0_wo0_b;
    u1_m0_wo0_cm4_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo0_cm4.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo0_cm4_aa,
        data_a => u1_m0_wo0_cm4_ia,
        wren_a => u0_m0_wo0_dec4_e(0),
        address_b => u1_m0_wo0_cm4_ab,
        q_b => u1_m0_wo0_cm4_iq
    );
    u1_m0_wo0_cm4_q <= u1_m0_wo0_cm4_iq(12 downto 0);

    -- u1_m0_wo0_sym_add5(ADD,198)@10 + 1
    u1_m0_wo0_sym_add5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr5_q(13)) & u1_m0_wo0_wi0_r0_delayr5_q));
    u1_m0_wo0_sym_add5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr18_q(13)) & u1_m0_wo0_wi0_r0_delayr18_q));
    u1_m0_wo0_sym_add5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_sym_add5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_sym_add5_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_sym_add5_a) + SIGNED(u1_m0_wo0_sym_add5_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_sym_add5_q <= u1_m0_wo0_sym_add5_o(14 downto 0);

    -- u0_m0_wo0_dec5(LOOKUP,71)@10 + 1
    u0_m0_wo0_dec5_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo0_dec5_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo0_dec5_q <= "0";
            u0_m0_wo0_dec5_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000001010" => u0_m0_wo0_dec5_q <= "0";
                                     u0_m0_wo0_dec5_e <= u0_m0_wo0_dec5_c;
                WHEN "1000100010" => u0_m0_wo0_dec5_q <= "1";
                                     u0_m0_wo0_dec5_e <= u0_m0_wo0_dec5_c;
                WHEN OTHERS => u0_m0_wo0_dec5_q <= (others => '-');
                               u0_m0_wo0_dec5_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo0_cm5(DUALMEM,174)@10 + 1
    u1_m0_wo0_cm5_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo0_cm5_aa <= u0_m0_wo0_dec5_q;
    u1_m0_wo0_cm5_ab <= bank_u1_m0_wi0_wo0_b;
    u1_m0_wo0_cm5_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo0_cm5.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo0_cm5_aa,
        data_a => u1_m0_wo0_cm5_ia,
        wren_a => u0_m0_wo0_dec5_e(0),
        address_b => u1_m0_wo0_cm5_ab,
        q_b => u1_m0_wo0_cm5_iq
    );
    u1_m0_wo0_cm5_q <= u1_m0_wo0_cm5_iq(12 downto 0);

    -- u1_m0_wo0_sym_add6(ADD,199)@10 + 1
    u1_m0_wo0_sym_add6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr6_q(13)) & u1_m0_wo0_wi0_r0_delayr6_q));
    u1_m0_wo0_sym_add6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr17_q(13)) & u1_m0_wo0_wi0_r0_delayr17_q));
    u1_m0_wo0_sym_add6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_sym_add6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_sym_add6_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_sym_add6_a) + SIGNED(u1_m0_wo0_sym_add6_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_sym_add6_q <= u1_m0_wo0_sym_add6_o(14 downto 0);

    -- u0_m0_wo0_dec6(LOOKUP,74)@10 + 1
    u0_m0_wo0_dec6_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo0_dec6_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo0_dec6_q <= "0";
            u0_m0_wo0_dec6_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000001100" => u0_m0_wo0_dec6_q <= "0";
                                     u0_m0_wo0_dec6_e <= u0_m0_wo0_dec6_c;
                WHEN "1000100100" => u0_m0_wo0_dec6_q <= "1";
                                     u0_m0_wo0_dec6_e <= u0_m0_wo0_dec6_c;
                WHEN OTHERS => u0_m0_wo0_dec6_q <= (others => '-');
                               u0_m0_wo0_dec6_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo0_cm6(DUALMEM,177)@10 + 1
    u1_m0_wo0_cm6_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo0_cm6_aa <= u0_m0_wo0_dec6_q;
    u1_m0_wo0_cm6_ab <= bank_u1_m0_wi0_wo0_b;
    u1_m0_wo0_cm6_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo0_cm6.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo0_cm6_aa,
        data_a => u1_m0_wo0_cm6_ia,
        wren_a => u0_m0_wo0_dec6_e(0),
        address_b => u1_m0_wo0_cm6_ab,
        q_b => u1_m0_wo0_cm6_iq
    );
    u1_m0_wo0_cm6_q <= u1_m0_wo0_cm6_iq(12 downto 0);

    -- u1_m0_wo0_sym_add7(ADD,200)@10 + 1
    u1_m0_wo0_sym_add7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr7_q(13)) & u1_m0_wo0_wi0_r0_delayr7_q));
    u1_m0_wo0_sym_add7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr16_q(13)) & u1_m0_wo0_wi0_r0_delayr16_q));
    u1_m0_wo0_sym_add7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_sym_add7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_sym_add7_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_sym_add7_a) + SIGNED(u1_m0_wo0_sym_add7_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_sym_add7_q <= u1_m0_wo0_sym_add7_o(14 downto 0);

    -- u0_m0_wo0_dec7(LOOKUP,77)@10 + 1
    u0_m0_wo0_dec7_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo0_dec7_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo0_dec7_q <= "0";
            u0_m0_wo0_dec7_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000001110" => u0_m0_wo0_dec7_q <= "0";
                                     u0_m0_wo0_dec7_e <= u0_m0_wo0_dec7_c;
                WHEN "1000100110" => u0_m0_wo0_dec7_q <= "1";
                                     u0_m0_wo0_dec7_e <= u0_m0_wo0_dec7_c;
                WHEN OTHERS => u0_m0_wo0_dec7_q <= (others => '-');
                               u0_m0_wo0_dec7_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo0_cm7(DUALMEM,180)@10 + 1
    u1_m0_wo0_cm7_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo0_cm7_aa <= u0_m0_wo0_dec7_q;
    u1_m0_wo0_cm7_ab <= bank_u1_m0_wi0_wo0_b;
    u1_m0_wo0_cm7_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo0_cm7.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo0_cm7_aa,
        data_a => u1_m0_wo0_cm7_ia,
        wren_a => u0_m0_wo0_dec7_e(0),
        address_b => u1_m0_wo0_cm7_ab,
        q_b => u1_m0_wo0_cm7_iq
    );
    u1_m0_wo0_cm7_q <= u1_m0_wo0_cm7_iq(12 downto 0);

    -- u1_m0_wo0_mtree_madd4_1(MULTADD,206)@11 + 3
    u1_m0_wo0_mtree_madd4_1_a <= STD_LOGIC_VECTOR(u1_m0_wo0_cm7_q & u1_m0_wo0_cm6_q & u1_m0_wo0_cm5_q & u1_m0_wo0_cm4_q);
    u1_m0_wo0_mtree_madd4_1_b <= STD_LOGIC_VECTOR(u1_m0_wo0_sym_add7_q & u1_m0_wo0_sym_add6_q & u1_m0_wo0_sym_add5_q & u1_m0_wo0_sym_add4_q);
    u1_m0_wo0_mtree_madd4_1_reset <= areset;
    u1_m0_wo0_mtree_madd4_1_component : altmult_add
    GENERIC MAP (
        lpm_type => "altmult_add",
        dedicated_multiplier_circuitry => "YES",
        intended_device_family => "Stratix IV",
        number_of_multipliers => 4,
        representation_a => "SIGNED",
        representation_b => "SIGNED",
        width_a => 13,
        width_b => 15,
        width_result => 30,
        multiplier1_direction => "ADD",
        multiplier3_direction => "ADD",
        port_addnsub1 => "PORT_CONNECTIVITY",
        port_addnsub3 => "PORT_UNUSED",
        port_signa => "PORT_UNUSED",
        port_signb => "PORT_UNUSED",
        input_register_a0 => "CLOCK0",
        input_register_a1 => "CLOCK0",
        input_register_a2 => "CLOCK0",
        input_register_a3 => "CLOCK0",
        input_register_b0 => "CLOCK0",
        input_register_b1 => "CLOCK0",
        input_register_b2 => "CLOCK0",
        input_register_b3 => "CLOCK0",
        input_source_a0 => "DATAA",
        input_source_a1 => "DATAA",
        input_source_a2 => "DATAA",
        input_source_a3 => "DATAA",
        input_source_b0 => "DATAB",
        input_source_b1 => "DATAB",
        input_source_b2 => "DATAB",
        input_source_b3 => "DATAB",
        input_aclr_a0 => "ACLR0",
        input_aclr_a1 => "ACLR0",
        input_aclr_a2 => "ACLR0",
        input_aclr_a3 => "ACLR0",
        input_aclr_b0 => "ACLR0",
        input_aclr_b1 => "ACLR0",
        input_aclr_b2 => "ACLR0",
        input_aclr_b3 => "ACLR0",
        addnsub_multiplier_register1 => "CLOCK0",
        addnsub_multiplier_register3 => "CLOCK0",
        addnsub_multiplier_aclr1 => "ACLR0",
        addnsub_multiplier_aclr3 => "ACLR0",
        signed_register_a => "CLOCK0",
        signed_register_b => "CLOCK0",
        signed_aclr_a => "ACLR0",
        signed_aclr_b => "ACLR0",
        multiplier_register0 => "CLOCK0",
        multiplier_aclr0 => "ACLR0",
        multiplier_register1 => "CLOCK0",
        multiplier_aclr1 => "ACLR0",
        multiplier_register2 => "CLOCK0",
        multiplier_aclr2 => "ACLR0",
        multiplier_register3 => "CLOCK0",
        multiplier_aclr3 => "ACLR0",
        addnsub_multiplier_pipeline_register1 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr1 => "ACLR0",
        addnsub_multiplier_pipeline_register3 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr3 => "ACLR0",
        signed_pipeline_register_a => "CLOCK0",
        signed_pipeline_register_b => "CLOCK0",
        signed_pipeline_aclr_a => "ACLR0",
        signed_pipeline_aclr_b => "ACLR0",
        output_register => "CLOCK0",
        output_aclr => "ACLR0"
    )
    PORT MAP (
        dataa => u1_m0_wo0_mtree_madd4_1_a,
        datab => u1_m0_wo0_mtree_madd4_1_b,
        clock0 => clk,
        aclr0 => u1_m0_wo0_mtree_madd4_1_reset,
        ena0 => VCC_q(0),
        result => u1_m0_wo0_mtree_madd4_1_s1
    );
    u1_m0_wo0_mtree_madd4_1_q <= u1_m0_wo0_mtree_madd4_1_s1;

    -- u1_m0_wo0_sym_add8(ADD,201)@10 + 1
    u1_m0_wo0_sym_add8_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr8_q(13)) & u1_m0_wo0_wi0_r0_delayr8_q));
    u1_m0_wo0_sym_add8_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr15_q(13)) & u1_m0_wo0_wi0_r0_delayr15_q));
    u1_m0_wo0_sym_add8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_sym_add8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_sym_add8_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_sym_add8_a) + SIGNED(u1_m0_wo0_sym_add8_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_sym_add8_q <= u1_m0_wo0_sym_add8_o(14 downto 0);

    -- u0_m0_wo0_dec8(LOOKUP,80)@10 + 1
    u0_m0_wo0_dec8_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo0_dec8_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo0_dec8_q <= "0";
            u0_m0_wo0_dec8_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000010000" => u0_m0_wo0_dec8_q <= "0";
                                     u0_m0_wo0_dec8_e <= u0_m0_wo0_dec8_c;
                WHEN "1000101000" => u0_m0_wo0_dec8_q <= "1";
                                     u0_m0_wo0_dec8_e <= u0_m0_wo0_dec8_c;
                WHEN OTHERS => u0_m0_wo0_dec8_q <= (others => '-');
                               u0_m0_wo0_dec8_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo0_cm8(DUALMEM,183)@10 + 1
    u1_m0_wo0_cm8_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo0_cm8_aa <= u0_m0_wo0_dec8_q;
    u1_m0_wo0_cm8_ab <= bank_u1_m0_wi0_wo0_b;
    u1_m0_wo0_cm8_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo0_cm8.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo0_cm8_aa,
        data_a => u1_m0_wo0_cm8_ia,
        wren_a => u0_m0_wo0_dec8_e(0),
        address_b => u1_m0_wo0_cm8_ab,
        q_b => u1_m0_wo0_cm8_iq
    );
    u1_m0_wo0_cm8_q <= u1_m0_wo0_cm8_iq(12 downto 0);

    -- u1_m0_wo0_sym_add9(ADD,202)@10 + 1
    u1_m0_wo0_sym_add9_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr9_q(13)) & u1_m0_wo0_wi0_r0_delayr9_q));
    u1_m0_wo0_sym_add9_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr14_q(13)) & u1_m0_wo0_wi0_r0_delayr14_q));
    u1_m0_wo0_sym_add9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_sym_add9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_sym_add9_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_sym_add9_a) + SIGNED(u1_m0_wo0_sym_add9_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_sym_add9_q <= u1_m0_wo0_sym_add9_o(14 downto 0);

    -- u0_m0_wo0_dec9(LOOKUP,83)@10 + 1
    u0_m0_wo0_dec9_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo0_dec9_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo0_dec9_q <= "0";
            u0_m0_wo0_dec9_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000010010" => u0_m0_wo0_dec9_q <= "0";
                                     u0_m0_wo0_dec9_e <= u0_m0_wo0_dec9_c;
                WHEN "1000101010" => u0_m0_wo0_dec9_q <= "1";
                                     u0_m0_wo0_dec9_e <= u0_m0_wo0_dec9_c;
                WHEN OTHERS => u0_m0_wo0_dec9_q <= (others => '-');
                               u0_m0_wo0_dec9_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo0_cm9(DUALMEM,186)@10 + 1
    u1_m0_wo0_cm9_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo0_cm9_aa <= u0_m0_wo0_dec9_q;
    u1_m0_wo0_cm9_ab <= bank_u1_m0_wi0_wo0_b;
    u1_m0_wo0_cm9_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo0_cm9.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo0_cm9_aa,
        data_a => u1_m0_wo0_cm9_ia,
        wren_a => u0_m0_wo0_dec9_e(0),
        address_b => u1_m0_wo0_cm9_ab,
        q_b => u1_m0_wo0_cm9_iq
    );
    u1_m0_wo0_cm9_q <= u1_m0_wo0_cm9_iq(12 downto 0);

    -- u1_m0_wo0_sym_add10(ADD,203)@10 + 1
    u1_m0_wo0_sym_add10_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr10_q(13)) & u1_m0_wo0_wi0_r0_delayr10_q));
    u1_m0_wo0_sym_add10_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr13_q(13)) & u1_m0_wo0_wi0_r0_delayr13_q));
    u1_m0_wo0_sym_add10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_sym_add10_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_sym_add10_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_sym_add10_a) + SIGNED(u1_m0_wo0_sym_add10_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_sym_add10_q <= u1_m0_wo0_sym_add10_o(14 downto 0);

    -- u0_m0_wo0_dec10(LOOKUP,86)@10 + 1
    u0_m0_wo0_dec10_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo0_dec10_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo0_dec10_q <= "0";
            u0_m0_wo0_dec10_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000010100" => u0_m0_wo0_dec10_q <= "0";
                                     u0_m0_wo0_dec10_e <= u0_m0_wo0_dec10_c;
                WHEN "1000101100" => u0_m0_wo0_dec10_q <= "1";
                                     u0_m0_wo0_dec10_e <= u0_m0_wo0_dec10_c;
                WHEN OTHERS => u0_m0_wo0_dec10_q <= (others => '-');
                               u0_m0_wo0_dec10_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo0_cm10(DUALMEM,189)@10 + 1
    u1_m0_wo0_cm10_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo0_cm10_aa <= u0_m0_wo0_dec10_q;
    u1_m0_wo0_cm10_ab <= bank_u1_m0_wi0_wo0_b;
    u1_m0_wo0_cm10_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo0_cm10.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo0_cm10_aa,
        data_a => u1_m0_wo0_cm10_ia,
        wren_a => u0_m0_wo0_dec10_e(0),
        address_b => u1_m0_wo0_cm10_ab,
        q_b => u1_m0_wo0_cm10_iq
    );
    u1_m0_wo0_cm10_q <= u1_m0_wo0_cm10_iq(12 downto 0);

    -- u1_m0_wo0_sym_add11(ADD,204)@10 + 1
    u1_m0_wo0_sym_add11_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr11_q(13)) & u1_m0_wo0_wi0_r0_delayr11_q));
    u1_m0_wo0_sym_add11_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u1_m0_wo0_wi0_r0_delayr12_q(13)) & u1_m0_wo0_wi0_r0_delayr12_q));
    u1_m0_wo0_sym_add11_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_sym_add11_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_sym_add11_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_sym_add11_a) + SIGNED(u1_m0_wo0_sym_add11_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_sym_add11_q <= u1_m0_wo0_sym_add11_o(14 downto 0);

    -- u0_m0_wo0_dec11(LOOKUP,89)@10 + 1
    u0_m0_wo0_dec11_c <= STD_LOGIC_VECTOR(busIn_write);
    u0_m0_wo0_dec11_clkproc: PROCESS (clk, h_areset)
    BEGIN
        IF (h_areset = '1') THEN
            u0_m0_wo0_dec11_q <= "0";
            u0_m0_wo0_dec11_e <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (busIn_address) IS
                WHEN "1000010110" => u0_m0_wo0_dec11_q <= "0";
                                     u0_m0_wo0_dec11_e <= u0_m0_wo0_dec11_c;
                WHEN "1000101110" => u0_m0_wo0_dec11_q <= "1";
                                     u0_m0_wo0_dec11_e <= u0_m0_wo0_dec11_c;
                WHEN OTHERS => u0_m0_wo0_dec11_q <= (others => '-');
                               u0_m0_wo0_dec11_e <= "0";
            END CASE;
        END IF;
    END PROCESS;

    -- u1_m0_wo0_cm11(DUALMEM,192)@10 + 1
    u1_m0_wo0_cm11_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u1_m0_wo0_cm11_aa <= u0_m0_wo0_dec11_q;
    u1_m0_wo0_cm11_ab <= bank_u1_m0_wi0_wo0_b;
    u1_m0_wo0_cm11_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u1_m0_wo0_cm11.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u1_m0_wo0_cm11_aa,
        data_a => u1_m0_wo0_cm11_ia,
        wren_a => u0_m0_wo0_dec11_e(0),
        address_b => u1_m0_wo0_cm11_ab,
        q_b => u1_m0_wo0_cm11_iq
    );
    u1_m0_wo0_cm11_q <= u1_m0_wo0_cm11_iq(12 downto 0);

    -- u1_m0_wo0_mtree_madd4_0(MULTADD,207)@11 + 3
    u1_m0_wo0_mtree_madd4_0_a <= STD_LOGIC_VECTOR(u1_m0_wo0_cm11_q & u1_m0_wo0_cm10_q & u1_m0_wo0_cm9_q & u1_m0_wo0_cm8_q);
    u1_m0_wo0_mtree_madd4_0_b <= STD_LOGIC_VECTOR(u1_m0_wo0_sym_add11_q & u1_m0_wo0_sym_add10_q & u1_m0_wo0_sym_add9_q & u1_m0_wo0_sym_add8_q);
    u1_m0_wo0_mtree_madd4_0_reset <= areset;
    u1_m0_wo0_mtree_madd4_0_component : altmult_add
    GENERIC MAP (
        lpm_type => "altmult_add",
        dedicated_multiplier_circuitry => "YES",
        intended_device_family => "Stratix IV",
        number_of_multipliers => 4,
        representation_a => "SIGNED",
        representation_b => "SIGNED",
        width_a => 13,
        width_b => 15,
        width_result => 30,
        multiplier1_direction => "ADD",
        multiplier3_direction => "ADD",
        port_addnsub1 => "PORT_CONNECTIVITY",
        port_addnsub3 => "PORT_UNUSED",
        port_signa => "PORT_UNUSED",
        port_signb => "PORT_UNUSED",
        input_register_a0 => "CLOCK0",
        input_register_a1 => "CLOCK0",
        input_register_a2 => "CLOCK0",
        input_register_a3 => "CLOCK0",
        input_register_b0 => "CLOCK0",
        input_register_b1 => "CLOCK0",
        input_register_b2 => "CLOCK0",
        input_register_b3 => "CLOCK0",
        input_source_a0 => "DATAA",
        input_source_a1 => "DATAA",
        input_source_a2 => "DATAA",
        input_source_a3 => "DATAA",
        input_source_b0 => "DATAB",
        input_source_b1 => "DATAB",
        input_source_b2 => "DATAB",
        input_source_b3 => "DATAB",
        input_aclr_a0 => "ACLR0",
        input_aclr_a1 => "ACLR0",
        input_aclr_a2 => "ACLR0",
        input_aclr_a3 => "ACLR0",
        input_aclr_b0 => "ACLR0",
        input_aclr_b1 => "ACLR0",
        input_aclr_b2 => "ACLR0",
        input_aclr_b3 => "ACLR0",
        addnsub_multiplier_register1 => "CLOCK0",
        addnsub_multiplier_register3 => "CLOCK0",
        addnsub_multiplier_aclr1 => "ACLR0",
        addnsub_multiplier_aclr3 => "ACLR0",
        signed_register_a => "CLOCK0",
        signed_register_b => "CLOCK0",
        signed_aclr_a => "ACLR0",
        signed_aclr_b => "ACLR0",
        multiplier_register0 => "CLOCK0",
        multiplier_aclr0 => "ACLR0",
        multiplier_register1 => "CLOCK0",
        multiplier_aclr1 => "ACLR0",
        multiplier_register2 => "CLOCK0",
        multiplier_aclr2 => "ACLR0",
        multiplier_register3 => "CLOCK0",
        multiplier_aclr3 => "ACLR0",
        addnsub_multiplier_pipeline_register1 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr1 => "ACLR0",
        addnsub_multiplier_pipeline_register3 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr3 => "ACLR0",
        signed_pipeline_register_a => "CLOCK0",
        signed_pipeline_register_b => "CLOCK0",
        signed_pipeline_aclr_a => "ACLR0",
        signed_pipeline_aclr_b => "ACLR0",
        output_register => "CLOCK0",
        output_aclr => "ACLR0"
    )
    PORT MAP (
        dataa => u1_m0_wo0_mtree_madd4_0_a,
        datab => u1_m0_wo0_mtree_madd4_0_b,
        clock0 => clk,
        aclr0 => u1_m0_wo0_mtree_madd4_0_reset,
        ena0 => VCC_q(0),
        result => u1_m0_wo0_mtree_madd4_0_s1
    );
    u1_m0_wo0_mtree_madd4_0_q <= u1_m0_wo0_mtree_madd4_0_s1;

    -- u1_m0_wo0_mtree_add0_0(ADD,208)@14 + 1
    u1_m0_wo0_mtree_add0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u1_m0_wo0_mtree_madd4_0_q(29)) & u1_m0_wo0_mtree_madd4_0_q));
    u1_m0_wo0_mtree_add0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u1_m0_wo0_mtree_madd4_1_q(29)) & u1_m0_wo0_mtree_madd4_1_q));
    u1_m0_wo0_mtree_add0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add0_0_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add0_0_a) + SIGNED(u1_m0_wo0_mtree_add0_0_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add0_0_q <= u1_m0_wo0_mtree_add0_0_o(30 downto 0);

    -- u1_m0_wo0_mtree_add1_0(ADD,209)@15 + 1
    u1_m0_wo0_mtree_add1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => u1_m0_wo0_mtree_add0_0_q(30)) & u1_m0_wo0_mtree_add0_0_q));
    u1_m0_wo0_mtree_add1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 30 => u1_m0_wo0_mtree_madd4_2_q(29)) & u1_m0_wo0_mtree_madd4_2_q));
    u1_m0_wo0_mtree_add1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u1_m0_wo0_mtree_add1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u1_m0_wo0_mtree_add1_0_o <= STD_LOGIC_VECTOR(SIGNED(u1_m0_wo0_mtree_add1_0_a) + SIGNED(u1_m0_wo0_mtree_add1_0_b));
        END IF;
    END PROCESS;
    u1_m0_wo0_mtree_add1_0_q <= u1_m0_wo0_mtree_add1_0_o(31 downto 0);

    -- xIn_bankIn_0(BITJOIN,3)@10
    xIn_bankIn_0_q <= bankIn_0 & xIn_0;

    -- data_u0_m0_wi0_wo0(BITSELECT,14)@10
    data_u0_m0_wi0_wo0_in <= STD_LOGIC_VECTOR(xIn_bankIn_0_q(13 downto 0));
    data_u0_m0_wi0_wo0_b <= STD_LOGIC_VECTOR(data_u0_m0_wi0_wo0_in(13 downto 0));

    -- u0_m0_wo0_wi0_r0_delayr1(DELAY,20)@10
    u0_m0_wo0_wi0_r0_delayr1 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => data_u0_m0_wi0_wo0_b, xout => u0_m0_wo0_wi0_r0_delayr1_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr2(DELAY,21)@10
    u0_m0_wo0_wi0_r0_delayr2 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr1_q, xout => u0_m0_wo0_wi0_r0_delayr2_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr3(DELAY,22)@10
    u0_m0_wo0_wi0_r0_delayr3 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr2_q, xout => u0_m0_wo0_wi0_r0_delayr3_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr4(DELAY,23)@10
    u0_m0_wo0_wi0_r0_delayr4 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr3_q, xout => u0_m0_wo0_wi0_r0_delayr4_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr5(DELAY,24)@10
    u0_m0_wo0_wi0_r0_delayr5 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr4_q, xout => u0_m0_wo0_wi0_r0_delayr5_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr6(DELAY,25)@10
    u0_m0_wo0_wi0_r0_delayr6 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr5_q, xout => u0_m0_wo0_wi0_r0_delayr6_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr7(DELAY,26)@10
    u0_m0_wo0_wi0_r0_delayr7 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr6_q, xout => u0_m0_wo0_wi0_r0_delayr7_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr8(DELAY,27)@10
    u0_m0_wo0_wi0_r0_delayr8 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr7_q, xout => u0_m0_wo0_wi0_r0_delayr8_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr9(DELAY,28)@10
    u0_m0_wo0_wi0_r0_delayr9 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr8_q, xout => u0_m0_wo0_wi0_r0_delayr9_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr10(DELAY,29)@10
    u0_m0_wo0_wi0_r0_delayr10 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr9_q, xout => u0_m0_wo0_wi0_r0_delayr10_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr11(DELAY,30)@10
    u0_m0_wo0_wi0_r0_delayr11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr10_q, xout => u0_m0_wo0_wi0_r0_delayr11_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr12(DELAY,31)@10
    u0_m0_wo0_wi0_r0_delayr12 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr11_q, xout => u0_m0_wo0_wi0_r0_delayr12_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr13(DELAY,32)@10
    u0_m0_wo0_wi0_r0_delayr13 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr12_q, xout => u0_m0_wo0_wi0_r0_delayr13_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr14(DELAY,33)@10
    u0_m0_wo0_wi0_r0_delayr14 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr13_q, xout => u0_m0_wo0_wi0_r0_delayr14_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr15(DELAY,34)@10
    u0_m0_wo0_wi0_r0_delayr15 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr14_q, xout => u0_m0_wo0_wi0_r0_delayr15_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr16(DELAY,35)@10
    u0_m0_wo0_wi0_r0_delayr16 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr15_q, xout => u0_m0_wo0_wi0_r0_delayr16_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr17(DELAY,36)@10
    u0_m0_wo0_wi0_r0_delayr17 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr16_q, xout => u0_m0_wo0_wi0_r0_delayr17_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr18(DELAY,37)@10
    u0_m0_wo0_wi0_r0_delayr18 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr17_q, xout => u0_m0_wo0_wi0_r0_delayr18_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr19(DELAY,38)@10
    u0_m0_wo0_wi0_r0_delayr19 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr18_q, xout => u0_m0_wo0_wi0_r0_delayr19_q, ena => xIn_v(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_delayr19_q_11(DELAY,441)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr19_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr19_q, xout => d_u0_m0_wo0_wi0_r0_delayr19_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr20(DELAY,39)@11
    u0_m0_wo0_wi0_r0_delayr20 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => d_u0_m0_wo0_wi0_r0_delayr19_q_11_q, xout => u0_m0_wo0_wi0_r0_delayr20_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr21(DELAY,40)@11
    u0_m0_wo0_wi0_r0_delayr21 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr20_q, xout => u0_m0_wo0_wi0_r0_delayr21_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_delayr22(DELAY,41)@11
    u0_m0_wo0_wi0_r0_delayr22 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr21_q, xout => u0_m0_wo0_wi0_r0_delayr22_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- d_u0_m0_wo0_wi0_r0_phasedelay0_q_11(DELAY,436)@10 + 1
    d_u0_m0_wo0_wi0_r0_phasedelay0_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => data_u0_m0_wi0_wo0_b, xout => d_u0_m0_wo0_wi0_r0_phasedelay0_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo1_sym_add0(ADD,294)@11 + 1
    u0_m0_wo1_sym_add0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => d_u0_m0_wo0_wi0_r0_phasedelay0_q_11_q(13)) & d_u0_m0_wo0_wi0_r0_phasedelay0_q_11_q));
    u0_m0_wo1_sym_add0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr22_q(13)) & u0_m0_wo0_wi0_r0_delayr22_q));
    u0_m0_wo1_sym_add0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo1_sym_add0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo1_sym_add0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo1_sym_add0_a) + SIGNED(u0_m0_wo1_sym_add0_b));
        END IF;
    END PROCESS;
    u0_m0_wo1_sym_add0_q <= u0_m0_wo1_sym_add0_o(14 downto 0);

    -- bank_u0_m0_wi0_wo0(BITSELECT,13)@10
    bank_u0_m0_wi0_wo0_in <= STD_LOGIC_VECTOR(xIn_bankIn_0_q);
    bank_u0_m0_wi0_wo0_b <= STD_LOGIC_VECTOR(bank_u0_m0_wi0_wo0_in(14 downto 14));

    -- d_u0_m0_wo0_bank_phasedelay0_q_11(DELAY,442)@10 + 1
    d_u0_m0_wo0_bank_phasedelay0_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1)
    PORT MAP ( xin => bank_u0_m0_wi0_wo0_b, xout => d_u0_m0_wo0_bank_phasedelay0_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo1_cm0(DUALMEM,260)@11 + 1
    u0_m0_wo1_cm0_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo1_cm0_aa <= u0_m0_wo1_dec0_q;
    u0_m0_wo1_cm0_ab <= d_u0_m0_wo0_bank_phasedelay0_q_11_q;
    u0_m0_wo1_cm0_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo1_cm0.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo1_cm0_aa,
        data_a => u0_m0_wo1_cm0_ia,
        wren_a => u0_m0_wo1_dec0_e(0),
        address_b => u0_m0_wo1_cm0_ab,
        q_b => u0_m0_wo1_cm0_iq
    );
    u0_m0_wo1_cm0_q <= u0_m0_wo1_cm0_iq(12 downto 0);

    -- d_u0_m0_wo0_wi0_r0_delayr1_q_11(DELAY,437)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr1_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr1_q, xout => d_u0_m0_wo0_wi0_r0_delayr1_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo1_sym_add1(ADD,295)@11 + 1
    u0_m0_wo1_sym_add1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => d_u0_m0_wo0_wi0_r0_delayr1_q_11_q(13)) & d_u0_m0_wo0_wi0_r0_delayr1_q_11_q));
    u0_m0_wo1_sym_add1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr21_q(13)) & u0_m0_wo0_wi0_r0_delayr21_q));
    u0_m0_wo1_sym_add1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo1_sym_add1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo1_sym_add1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo1_sym_add1_a) + SIGNED(u0_m0_wo1_sym_add1_b));
        END IF;
    END PROCESS;
    u0_m0_wo1_sym_add1_q <= u0_m0_wo1_sym_add1_o(14 downto 0);

    -- d_u0_m0_wo0_bank_delayr1_q_11(DELAY,443)@10 + 1
    d_u0_m0_wo0_bank_delayr1_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1)
    PORT MAP ( xin => bank_u0_m0_wi0_wo0_b, xout => d_u0_m0_wo0_bank_delayr1_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo1_cm1(DUALMEM,263)@11 + 1
    u0_m0_wo1_cm1_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo1_cm1_aa <= u0_m0_wo1_dec1_q;
    u0_m0_wo1_cm1_ab <= d_u0_m0_wo0_bank_delayr1_q_11_q;
    u0_m0_wo1_cm1_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo1_cm1.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo1_cm1_aa,
        data_a => u0_m0_wo1_cm1_ia,
        wren_a => u0_m0_wo1_dec1_e(0),
        address_b => u0_m0_wo1_cm1_ab,
        q_b => u0_m0_wo1_cm1_iq
    );
    u0_m0_wo1_cm1_q <= u0_m0_wo1_cm1_iq(12 downto 0);

    -- d_u0_m0_wo0_wi0_r0_delayr2_q_11(DELAY,438)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr2_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr2_q, xout => d_u0_m0_wo0_wi0_r0_delayr2_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo1_sym_add2(ADD,296)@11 + 1
    u0_m0_wo1_sym_add2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => d_u0_m0_wo0_wi0_r0_delayr2_q_11_q(13)) & d_u0_m0_wo0_wi0_r0_delayr2_q_11_q));
    u0_m0_wo1_sym_add2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr20_q(13)) & u0_m0_wo0_wi0_r0_delayr20_q));
    u0_m0_wo1_sym_add2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo1_sym_add2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo1_sym_add2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo1_sym_add2_a) + SIGNED(u0_m0_wo1_sym_add2_b));
        END IF;
    END PROCESS;
    u0_m0_wo1_sym_add2_q <= u0_m0_wo1_sym_add2_o(14 downto 0);

    -- d_u0_m0_wo0_bank_delayr2_q_11(DELAY,444)@10 + 1
    d_u0_m0_wo0_bank_delayr2_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1)
    PORT MAP ( xin => bank_u0_m0_wi0_wo0_b, xout => d_u0_m0_wo0_bank_delayr2_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo1_cm2(DUALMEM,266)@11 + 1
    u0_m0_wo1_cm2_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo1_cm2_aa <= u0_m0_wo1_dec2_q;
    u0_m0_wo1_cm2_ab <= d_u0_m0_wo0_bank_delayr2_q_11_q;
    u0_m0_wo1_cm2_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo1_cm2.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo1_cm2_aa,
        data_a => u0_m0_wo1_cm2_ia,
        wren_a => u0_m0_wo1_dec2_e(0),
        address_b => u0_m0_wo1_cm2_ab,
        q_b => u0_m0_wo1_cm2_iq
    );
    u0_m0_wo1_cm2_q <= u0_m0_wo1_cm2_iq(12 downto 0);

    -- d_u0_m0_wo0_wi0_r0_delayr3_q_11(DELAY,439)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr3_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr3_q, xout => d_u0_m0_wo0_wi0_r0_delayr3_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo1_sym_add3(ADD,297)@11 + 1
    u0_m0_wo1_sym_add3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => d_u0_m0_wo0_wi0_r0_delayr3_q_11_q(13)) & d_u0_m0_wo0_wi0_r0_delayr3_q_11_q));
    u0_m0_wo1_sym_add3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => d_u0_m0_wo0_wi0_r0_delayr19_q_11_q(13)) & d_u0_m0_wo0_wi0_r0_delayr19_q_11_q));
    u0_m0_wo1_sym_add3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo1_sym_add3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo1_sym_add3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo1_sym_add3_a) + SIGNED(u0_m0_wo1_sym_add3_b));
        END IF;
    END PROCESS;
    u0_m0_wo1_sym_add3_q <= u0_m0_wo1_sym_add3_o(14 downto 0);

    -- d_u0_m0_wo0_bank_delayr3_q_11(DELAY,445)@10 + 1
    d_u0_m0_wo0_bank_delayr3_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1)
    PORT MAP ( xin => bank_u0_m0_wi0_wo0_b, xout => d_u0_m0_wo0_bank_delayr3_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo1_cm3(DUALMEM,269)@11 + 1
    u0_m0_wo1_cm3_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo1_cm3_aa <= u0_m0_wo1_dec3_q;
    u0_m0_wo1_cm3_ab <= d_u0_m0_wo0_bank_delayr3_q_11_q;
    u0_m0_wo1_cm3_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo1_cm3.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo1_cm3_aa,
        data_a => u0_m0_wo1_cm3_ia,
        wren_a => u0_m0_wo1_dec3_e(0),
        address_b => u0_m0_wo1_cm3_ab,
        q_b => u0_m0_wo1_cm3_iq
    );
    u0_m0_wo1_cm3_q <= u0_m0_wo1_cm3_iq(12 downto 0);

    -- u0_m0_wo1_mtree_madd4_2(MULTADD,306)@12 + 3
    u0_m0_wo1_mtree_madd4_2_a <= STD_LOGIC_VECTOR(u0_m0_wo1_cm3_q & u0_m0_wo1_cm2_q & u0_m0_wo1_cm1_q & u0_m0_wo1_cm0_q);
    u0_m0_wo1_mtree_madd4_2_b <= STD_LOGIC_VECTOR(u0_m0_wo1_sym_add3_q & u0_m0_wo1_sym_add2_q & u0_m0_wo1_sym_add1_q & u0_m0_wo1_sym_add0_q);
    u0_m0_wo1_mtree_madd4_2_reset <= areset;
    u0_m0_wo1_mtree_madd4_2_component : altmult_add
    GENERIC MAP (
        lpm_type => "altmult_add",
        dedicated_multiplier_circuitry => "YES",
        intended_device_family => "Stratix IV",
        number_of_multipliers => 4,
        representation_a => "SIGNED",
        representation_b => "SIGNED",
        width_a => 13,
        width_b => 15,
        width_result => 30,
        multiplier1_direction => "ADD",
        multiplier3_direction => "ADD",
        port_addnsub1 => "PORT_CONNECTIVITY",
        port_addnsub3 => "PORT_UNUSED",
        port_signa => "PORT_UNUSED",
        port_signb => "PORT_UNUSED",
        input_register_a0 => "CLOCK0",
        input_register_a1 => "CLOCK0",
        input_register_a2 => "CLOCK0",
        input_register_a3 => "CLOCK0",
        input_register_b0 => "CLOCK0",
        input_register_b1 => "CLOCK0",
        input_register_b2 => "CLOCK0",
        input_register_b3 => "CLOCK0",
        input_source_a0 => "DATAA",
        input_source_a1 => "DATAA",
        input_source_a2 => "DATAA",
        input_source_a3 => "DATAA",
        input_source_b0 => "DATAB",
        input_source_b1 => "DATAB",
        input_source_b2 => "DATAB",
        input_source_b3 => "DATAB",
        input_aclr_a0 => "ACLR0",
        input_aclr_a1 => "ACLR0",
        input_aclr_a2 => "ACLR0",
        input_aclr_a3 => "ACLR0",
        input_aclr_b0 => "ACLR0",
        input_aclr_b1 => "ACLR0",
        input_aclr_b2 => "ACLR0",
        input_aclr_b3 => "ACLR0",
        addnsub_multiplier_register1 => "CLOCK0",
        addnsub_multiplier_register3 => "CLOCK0",
        addnsub_multiplier_aclr1 => "ACLR0",
        addnsub_multiplier_aclr3 => "ACLR0",
        signed_register_a => "CLOCK0",
        signed_register_b => "CLOCK0",
        signed_aclr_a => "ACLR0",
        signed_aclr_b => "ACLR0",
        multiplier_register0 => "CLOCK0",
        multiplier_aclr0 => "ACLR0",
        multiplier_register1 => "CLOCK0",
        multiplier_aclr1 => "ACLR0",
        multiplier_register2 => "CLOCK0",
        multiplier_aclr2 => "ACLR0",
        multiplier_register3 => "CLOCK0",
        multiplier_aclr3 => "ACLR0",
        addnsub_multiplier_pipeline_register1 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr1 => "ACLR0",
        addnsub_multiplier_pipeline_register3 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr3 => "ACLR0",
        signed_pipeline_register_a => "CLOCK0",
        signed_pipeline_register_b => "CLOCK0",
        signed_pipeline_aclr_a => "ACLR0",
        signed_pipeline_aclr_b => "ACLR0",
        output_register => "CLOCK0",
        output_aclr => "ACLR0"
    )
    PORT MAP (
        dataa => u0_m0_wo1_mtree_madd4_2_a,
        datab => u0_m0_wo1_mtree_madd4_2_b,
        clock0 => clk,
        aclr0 => u0_m0_wo1_mtree_madd4_2_reset,
        ena0 => VCC_q(0),
        result => u0_m0_wo1_mtree_madd4_2_s1
    );
    u0_m0_wo1_mtree_madd4_2_q <= u0_m0_wo1_mtree_madd4_2_s1;

    -- u0_m0_wo1_sym_add4(ADD,298)@10 + 1
    u0_m0_wo1_sym_add4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr4_q(13)) & u0_m0_wo0_wi0_r0_delayr4_q));
    u0_m0_wo1_sym_add4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr18_q(13)) & u0_m0_wo0_wi0_r0_delayr18_q));
    u0_m0_wo1_sym_add4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo1_sym_add4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo1_sym_add4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo1_sym_add4_a) + SIGNED(u0_m0_wo1_sym_add4_b));
        END IF;
    END PROCESS;
    u0_m0_wo1_sym_add4_q <= u0_m0_wo1_sym_add4_o(14 downto 0);

    -- u0_m0_wo1_cm4(DUALMEM,272)@10 + 1
    u0_m0_wo1_cm4_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo1_cm4_aa <= u0_m0_wo1_dec4_q;
    u0_m0_wo1_cm4_ab <= bank_u0_m0_wi0_wo0_b;
    u0_m0_wo1_cm4_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo1_cm4.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo1_cm4_aa,
        data_a => u0_m0_wo1_cm4_ia,
        wren_a => u0_m0_wo1_dec4_e(0),
        address_b => u0_m0_wo1_cm4_ab,
        q_b => u0_m0_wo1_cm4_iq
    );
    u0_m0_wo1_cm4_q <= u0_m0_wo1_cm4_iq(12 downto 0);

    -- u0_m0_wo1_sym_add5(ADD,299)@10 + 1
    u0_m0_wo1_sym_add5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr5_q(13)) & u0_m0_wo0_wi0_r0_delayr5_q));
    u0_m0_wo1_sym_add5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr17_q(13)) & u0_m0_wo0_wi0_r0_delayr17_q));
    u0_m0_wo1_sym_add5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo1_sym_add5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo1_sym_add5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo1_sym_add5_a) + SIGNED(u0_m0_wo1_sym_add5_b));
        END IF;
    END PROCESS;
    u0_m0_wo1_sym_add5_q <= u0_m0_wo1_sym_add5_o(14 downto 0);

    -- u0_m0_wo1_cm5(DUALMEM,275)@10 + 1
    u0_m0_wo1_cm5_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo1_cm5_aa <= u0_m0_wo1_dec5_q;
    u0_m0_wo1_cm5_ab <= bank_u0_m0_wi0_wo0_b;
    u0_m0_wo1_cm5_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo1_cm5.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo1_cm5_aa,
        data_a => u0_m0_wo1_cm5_ia,
        wren_a => u0_m0_wo1_dec5_e(0),
        address_b => u0_m0_wo1_cm5_ab,
        q_b => u0_m0_wo1_cm5_iq
    );
    u0_m0_wo1_cm5_q <= u0_m0_wo1_cm5_iq(12 downto 0);

    -- u0_m0_wo1_sym_add6(ADD,300)@10 + 1
    u0_m0_wo1_sym_add6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr6_q(13)) & u0_m0_wo0_wi0_r0_delayr6_q));
    u0_m0_wo1_sym_add6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr16_q(13)) & u0_m0_wo0_wi0_r0_delayr16_q));
    u0_m0_wo1_sym_add6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo1_sym_add6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo1_sym_add6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo1_sym_add6_a) + SIGNED(u0_m0_wo1_sym_add6_b));
        END IF;
    END PROCESS;
    u0_m0_wo1_sym_add6_q <= u0_m0_wo1_sym_add6_o(14 downto 0);

    -- u0_m0_wo1_cm6(DUALMEM,278)@10 + 1
    u0_m0_wo1_cm6_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo1_cm6_aa <= u0_m0_wo1_dec6_q;
    u0_m0_wo1_cm6_ab <= bank_u0_m0_wi0_wo0_b;
    u0_m0_wo1_cm6_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo1_cm6.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo1_cm6_aa,
        data_a => u0_m0_wo1_cm6_ia,
        wren_a => u0_m0_wo1_dec6_e(0),
        address_b => u0_m0_wo1_cm6_ab,
        q_b => u0_m0_wo1_cm6_iq
    );
    u0_m0_wo1_cm6_q <= u0_m0_wo1_cm6_iq(12 downto 0);

    -- u0_m0_wo1_sym_add7(ADD,301)@10 + 1
    u0_m0_wo1_sym_add7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr7_q(13)) & u0_m0_wo0_wi0_r0_delayr7_q));
    u0_m0_wo1_sym_add7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr15_q(13)) & u0_m0_wo0_wi0_r0_delayr15_q));
    u0_m0_wo1_sym_add7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo1_sym_add7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo1_sym_add7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo1_sym_add7_a) + SIGNED(u0_m0_wo1_sym_add7_b));
        END IF;
    END PROCESS;
    u0_m0_wo1_sym_add7_q <= u0_m0_wo1_sym_add7_o(14 downto 0);

    -- u0_m0_wo1_cm7(DUALMEM,281)@10 + 1
    u0_m0_wo1_cm7_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo1_cm7_aa <= u0_m0_wo1_dec7_q;
    u0_m0_wo1_cm7_ab <= bank_u0_m0_wi0_wo0_b;
    u0_m0_wo1_cm7_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo1_cm7.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo1_cm7_aa,
        data_a => u0_m0_wo1_cm7_ia,
        wren_a => u0_m0_wo1_dec7_e(0),
        address_b => u0_m0_wo1_cm7_ab,
        q_b => u0_m0_wo1_cm7_iq
    );
    u0_m0_wo1_cm7_q <= u0_m0_wo1_cm7_iq(12 downto 0);

    -- u0_m0_wo1_mtree_madd4_1(MULTADD,307)@11 + 3
    u0_m0_wo1_mtree_madd4_1_a <= STD_LOGIC_VECTOR(u0_m0_wo1_cm7_q & u0_m0_wo1_cm6_q & u0_m0_wo1_cm5_q & u0_m0_wo1_cm4_q);
    u0_m0_wo1_mtree_madd4_1_b <= STD_LOGIC_VECTOR(u0_m0_wo1_sym_add7_q & u0_m0_wo1_sym_add6_q & u0_m0_wo1_sym_add5_q & u0_m0_wo1_sym_add4_q);
    u0_m0_wo1_mtree_madd4_1_reset <= areset;
    u0_m0_wo1_mtree_madd4_1_component : altmult_add
    GENERIC MAP (
        lpm_type => "altmult_add",
        dedicated_multiplier_circuitry => "YES",
        intended_device_family => "Stratix IV",
        number_of_multipliers => 4,
        representation_a => "SIGNED",
        representation_b => "SIGNED",
        width_a => 13,
        width_b => 15,
        width_result => 30,
        multiplier1_direction => "ADD",
        multiplier3_direction => "ADD",
        port_addnsub1 => "PORT_CONNECTIVITY",
        port_addnsub3 => "PORT_UNUSED",
        port_signa => "PORT_UNUSED",
        port_signb => "PORT_UNUSED",
        input_register_a0 => "CLOCK0",
        input_register_a1 => "CLOCK0",
        input_register_a2 => "CLOCK0",
        input_register_a3 => "CLOCK0",
        input_register_b0 => "CLOCK0",
        input_register_b1 => "CLOCK0",
        input_register_b2 => "CLOCK0",
        input_register_b3 => "CLOCK0",
        input_source_a0 => "DATAA",
        input_source_a1 => "DATAA",
        input_source_a2 => "DATAA",
        input_source_a3 => "DATAA",
        input_source_b0 => "DATAB",
        input_source_b1 => "DATAB",
        input_source_b2 => "DATAB",
        input_source_b3 => "DATAB",
        input_aclr_a0 => "ACLR0",
        input_aclr_a1 => "ACLR0",
        input_aclr_a2 => "ACLR0",
        input_aclr_a3 => "ACLR0",
        input_aclr_b0 => "ACLR0",
        input_aclr_b1 => "ACLR0",
        input_aclr_b2 => "ACLR0",
        input_aclr_b3 => "ACLR0",
        addnsub_multiplier_register1 => "CLOCK0",
        addnsub_multiplier_register3 => "CLOCK0",
        addnsub_multiplier_aclr1 => "ACLR0",
        addnsub_multiplier_aclr3 => "ACLR0",
        signed_register_a => "CLOCK0",
        signed_register_b => "CLOCK0",
        signed_aclr_a => "ACLR0",
        signed_aclr_b => "ACLR0",
        multiplier_register0 => "CLOCK0",
        multiplier_aclr0 => "ACLR0",
        multiplier_register1 => "CLOCK0",
        multiplier_aclr1 => "ACLR0",
        multiplier_register2 => "CLOCK0",
        multiplier_aclr2 => "ACLR0",
        multiplier_register3 => "CLOCK0",
        multiplier_aclr3 => "ACLR0",
        addnsub_multiplier_pipeline_register1 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr1 => "ACLR0",
        addnsub_multiplier_pipeline_register3 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr3 => "ACLR0",
        signed_pipeline_register_a => "CLOCK0",
        signed_pipeline_register_b => "CLOCK0",
        signed_pipeline_aclr_a => "ACLR0",
        signed_pipeline_aclr_b => "ACLR0",
        output_register => "CLOCK0",
        output_aclr => "ACLR0"
    )
    PORT MAP (
        dataa => u0_m0_wo1_mtree_madd4_1_a,
        datab => u0_m0_wo1_mtree_madd4_1_b,
        clock0 => clk,
        aclr0 => u0_m0_wo1_mtree_madd4_1_reset,
        ena0 => VCC_q(0),
        result => u0_m0_wo1_mtree_madd4_1_s1
    );
    u0_m0_wo1_mtree_madd4_1_q <= u0_m0_wo1_mtree_madd4_1_s1;

    -- u0_m0_wo1_sym_add8(ADD,302)@10 + 1
    u0_m0_wo1_sym_add8_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr8_q(13)) & u0_m0_wo0_wi0_r0_delayr8_q));
    u0_m0_wo1_sym_add8_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr14_q(13)) & u0_m0_wo0_wi0_r0_delayr14_q));
    u0_m0_wo1_sym_add8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo1_sym_add8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo1_sym_add8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo1_sym_add8_a) + SIGNED(u0_m0_wo1_sym_add8_b));
        END IF;
    END PROCESS;
    u0_m0_wo1_sym_add8_q <= u0_m0_wo1_sym_add8_o(14 downto 0);

    -- u0_m0_wo1_cm8(DUALMEM,284)@10 + 1
    u0_m0_wo1_cm8_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo1_cm8_aa <= u0_m0_wo1_dec8_q;
    u0_m0_wo1_cm8_ab <= bank_u0_m0_wi0_wo0_b;
    u0_m0_wo1_cm8_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo1_cm8.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo1_cm8_aa,
        data_a => u0_m0_wo1_cm8_ia,
        wren_a => u0_m0_wo1_dec8_e(0),
        address_b => u0_m0_wo1_cm8_ab,
        q_b => u0_m0_wo1_cm8_iq
    );
    u0_m0_wo1_cm8_q <= u0_m0_wo1_cm8_iq(12 downto 0);

    -- u0_m0_wo1_sym_add9(ADD,303)@10 + 1
    u0_m0_wo1_sym_add9_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr9_q(13)) & u0_m0_wo0_wi0_r0_delayr9_q));
    u0_m0_wo1_sym_add9_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr13_q(13)) & u0_m0_wo0_wi0_r0_delayr13_q));
    u0_m0_wo1_sym_add9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo1_sym_add9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo1_sym_add9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo1_sym_add9_a) + SIGNED(u0_m0_wo1_sym_add9_b));
        END IF;
    END PROCESS;
    u0_m0_wo1_sym_add9_q <= u0_m0_wo1_sym_add9_o(14 downto 0);

    -- u0_m0_wo1_cm9(DUALMEM,287)@10 + 1
    u0_m0_wo1_cm9_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo1_cm9_aa <= u0_m0_wo1_dec9_q;
    u0_m0_wo1_cm9_ab <= bank_u0_m0_wi0_wo0_b;
    u0_m0_wo1_cm9_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo1_cm9.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo1_cm9_aa,
        data_a => u0_m0_wo1_cm9_ia,
        wren_a => u0_m0_wo1_dec9_e(0),
        address_b => u0_m0_wo1_cm9_ab,
        q_b => u0_m0_wo1_cm9_iq
    );
    u0_m0_wo1_cm9_q <= u0_m0_wo1_cm9_iq(12 downto 0);

    -- u0_m0_wo1_sym_add10(ADD,304)@10 + 1
    u0_m0_wo1_sym_add10_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr10_q(13)) & u0_m0_wo0_wi0_r0_delayr10_q));
    u0_m0_wo1_sym_add10_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr12_q(13)) & u0_m0_wo0_wi0_r0_delayr12_q));
    u0_m0_wo1_sym_add10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo1_sym_add10_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo1_sym_add10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo1_sym_add10_a) + SIGNED(u0_m0_wo1_sym_add10_b));
        END IF;
    END PROCESS;
    u0_m0_wo1_sym_add10_q <= u0_m0_wo1_sym_add10_o(14 downto 0);

    -- u0_m0_wo1_cm10(DUALMEM,290)@10 + 1
    u0_m0_wo1_cm10_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo1_cm10_aa <= u0_m0_wo1_dec10_q;
    u0_m0_wo1_cm10_ab <= bank_u0_m0_wi0_wo0_b;
    u0_m0_wo1_cm10_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo1_cm10.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo1_cm10_aa,
        data_a => u0_m0_wo1_cm10_ia,
        wren_a => u0_m0_wo1_dec10_e(0),
        address_b => u0_m0_wo1_cm10_ab,
        q_b => u0_m0_wo1_cm10_iq
    );
    u0_m0_wo1_cm10_q <= u0_m0_wo1_cm10_iq(12 downto 0);

    -- d_u0_m0_wo0_wi0_r0_delayr11_q_11(DELAY,440)@10 + 1
    d_u0_m0_wo0_wi0_r0_delayr11_q_11 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr11_q, xout => d_u0_m0_wo0_wi0_r0_delayr11_q_11_q, clk => clk, aclr => areset );

    -- u0_m0_wo1_cm11(DUALMEM,293)@10 + 1
    u0_m0_wo1_cm11_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo1_cm11_aa <= u0_m0_wo1_dec11_q;
    u0_m0_wo1_cm11_ab <= bank_u0_m0_wi0_wo0_b;
    u0_m0_wo1_cm11_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo1_cm11.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo1_cm11_aa,
        data_a => u0_m0_wo1_cm11_ia,
        wren_a => u0_m0_wo1_dec11_e(0),
        address_b => u0_m0_wo1_cm11_ab,
        q_b => u0_m0_wo1_cm11_iq
    );
    u0_m0_wo1_cm11_q <= u0_m0_wo1_cm11_iq(12 downto 0);

    -- u0_m0_wo1_mtree_madd4_0(MULTADD,308)@11 + 3
    u0_m0_wo1_mtree_madd4_0_a <= STD_LOGIC_VECTOR(u0_m0_wo1_cm11_q & u0_m0_wo1_cm10_q & u0_m0_wo1_cm9_q & u0_m0_wo1_cm8_q);
    u0_m0_wo1_mtree_madd4_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => d_u0_m0_wo0_wi0_r0_delayr11_q_11_q(13)) & d_u0_m0_wo0_wi0_r0_delayr11_q_11_q) & u0_m0_wo1_sym_add10_q & u0_m0_wo1_sym_add9_q & u0_m0_wo1_sym_add8_q);
    u0_m0_wo1_mtree_madd4_0_reset <= areset;
    u0_m0_wo1_mtree_madd4_0_component : altmult_add
    GENERIC MAP (
        lpm_type => "altmult_add",
        dedicated_multiplier_circuitry => "YES",
        intended_device_family => "Stratix IV",
        number_of_multipliers => 4,
        representation_a => "SIGNED",
        representation_b => "SIGNED",
        width_a => 13,
        width_b => 15,
        width_result => 30,
        multiplier1_direction => "ADD",
        multiplier3_direction => "ADD",
        port_addnsub1 => "PORT_CONNECTIVITY",
        port_addnsub3 => "PORT_UNUSED",
        port_signa => "PORT_UNUSED",
        port_signb => "PORT_UNUSED",
        input_register_a0 => "CLOCK0",
        input_register_a1 => "CLOCK0",
        input_register_a2 => "CLOCK0",
        input_register_a3 => "CLOCK0",
        input_register_b0 => "CLOCK0",
        input_register_b1 => "CLOCK0",
        input_register_b2 => "CLOCK0",
        input_register_b3 => "CLOCK0",
        input_source_a0 => "DATAA",
        input_source_a1 => "DATAA",
        input_source_a2 => "DATAA",
        input_source_a3 => "DATAA",
        input_source_b0 => "DATAB",
        input_source_b1 => "DATAB",
        input_source_b2 => "DATAB",
        input_source_b3 => "DATAB",
        input_aclr_a0 => "ACLR0",
        input_aclr_a1 => "ACLR0",
        input_aclr_a2 => "ACLR0",
        input_aclr_a3 => "ACLR0",
        input_aclr_b0 => "ACLR0",
        input_aclr_b1 => "ACLR0",
        input_aclr_b2 => "ACLR0",
        input_aclr_b3 => "ACLR0",
        addnsub_multiplier_register1 => "CLOCK0",
        addnsub_multiplier_register3 => "CLOCK0",
        addnsub_multiplier_aclr1 => "ACLR0",
        addnsub_multiplier_aclr3 => "ACLR0",
        signed_register_a => "CLOCK0",
        signed_register_b => "CLOCK0",
        signed_aclr_a => "ACLR0",
        signed_aclr_b => "ACLR0",
        multiplier_register0 => "CLOCK0",
        multiplier_aclr0 => "ACLR0",
        multiplier_register1 => "CLOCK0",
        multiplier_aclr1 => "ACLR0",
        multiplier_register2 => "CLOCK0",
        multiplier_aclr2 => "ACLR0",
        multiplier_register3 => "CLOCK0",
        multiplier_aclr3 => "ACLR0",
        addnsub_multiplier_pipeline_register1 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr1 => "ACLR0",
        addnsub_multiplier_pipeline_register3 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr3 => "ACLR0",
        signed_pipeline_register_a => "CLOCK0",
        signed_pipeline_register_b => "CLOCK0",
        signed_pipeline_aclr_a => "ACLR0",
        signed_pipeline_aclr_b => "ACLR0",
        output_register => "CLOCK0",
        output_aclr => "ACLR0"
    )
    PORT MAP (
        dataa => u0_m0_wo1_mtree_madd4_0_a,
        datab => u0_m0_wo1_mtree_madd4_0_b,
        clock0 => clk,
        aclr0 => u0_m0_wo1_mtree_madd4_0_reset,
        ena0 => VCC_q(0),
        result => u0_m0_wo1_mtree_madd4_0_s1
    );
    u0_m0_wo1_mtree_madd4_0_q <= u0_m0_wo1_mtree_madd4_0_s1;

    -- u0_m0_wo1_mtree_add0_0(ADD,309)@14 + 1
    u0_m0_wo1_mtree_add0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo1_mtree_madd4_0_q(29)) & u0_m0_wo1_mtree_madd4_0_q));
    u0_m0_wo1_mtree_add0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo1_mtree_madd4_1_q(29)) & u0_m0_wo1_mtree_madd4_1_q));
    u0_m0_wo1_mtree_add0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo1_mtree_add0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo1_mtree_add0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo1_mtree_add0_0_a) + SIGNED(u0_m0_wo1_mtree_add0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo1_mtree_add0_0_q <= u0_m0_wo1_mtree_add0_0_o(30 downto 0);

    -- u0_m0_wo1_mtree_add1_0(ADD,310)@15 + 1
    u0_m0_wo1_mtree_add1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo1_mtree_add0_0_q(30)) & u0_m0_wo1_mtree_add0_0_q));
    u0_m0_wo1_mtree_add1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 30 => u0_m0_wo1_mtree_madd4_2_q(29)) & u0_m0_wo1_mtree_madd4_2_q));
    u0_m0_wo1_mtree_add1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo1_mtree_add1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo1_mtree_add1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo1_mtree_add1_0_a) + SIGNED(u0_m0_wo1_mtree_add1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo1_mtree_add1_0_q <= u0_m0_wo1_mtree_add1_0_o(31 downto 0);

    -- u0_m0_wo0_wi0_r0_delayr23(DELAY,42)@11
    u0_m0_wo0_wi0_r0_delayr23 : dspba_delay
    GENERIC MAP ( width => 14, depth => 1)
    PORT MAP ( xin => u0_m0_wo0_wi0_r0_delayr22_q, xout => u0_m0_wo0_wi0_r0_delayr23_q, ena => d_u0_m0_wo0_compute_q_11_q(0), clk => clk, aclr => areset );

    -- u0_m0_wo0_sym_add0(ADD,92)@11 + 1
    u0_m0_wo0_sym_add0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => d_u0_m0_wo0_wi0_r0_phasedelay0_q_11_q(13)) & d_u0_m0_wo0_wi0_r0_phasedelay0_q_11_q));
    u0_m0_wo0_sym_add0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr23_q(13)) & u0_m0_wo0_wi0_r0_delayr23_q));
    u0_m0_wo0_sym_add0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sym_add0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sym_add0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_sym_add0_a) + SIGNED(u0_m0_wo0_sym_add0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_sym_add0_q <= u0_m0_wo0_sym_add0_o(14 downto 0);

    -- u0_m0_wo0_cm0(DUALMEM,58)@11 + 1
    u0_m0_wo0_cm0_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo0_cm0_aa <= u0_m0_wo0_dec0_q;
    u0_m0_wo0_cm0_ab <= d_u0_m0_wo0_bank_phasedelay0_q_11_q;
    u0_m0_wo0_cm0_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo0_cm0.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo0_cm0_aa,
        data_a => u0_m0_wo0_cm0_ia,
        wren_a => u0_m0_wo0_dec0_e(0),
        address_b => u0_m0_wo0_cm0_ab,
        q_b => u0_m0_wo0_cm0_iq
    );
    u0_m0_wo0_cm0_q <= u0_m0_wo0_cm0_iq(12 downto 0);

    -- u0_m0_wo0_sym_add1(ADD,93)@11 + 1
    u0_m0_wo0_sym_add1_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => d_u0_m0_wo0_wi0_r0_delayr1_q_11_q(13)) & d_u0_m0_wo0_wi0_r0_delayr1_q_11_q));
    u0_m0_wo0_sym_add1_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr22_q(13)) & u0_m0_wo0_wi0_r0_delayr22_q));
    u0_m0_wo0_sym_add1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sym_add1_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sym_add1_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_sym_add1_a) + SIGNED(u0_m0_wo0_sym_add1_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_sym_add1_q <= u0_m0_wo0_sym_add1_o(14 downto 0);

    -- u0_m0_wo0_cm1(DUALMEM,61)@11 + 1
    u0_m0_wo0_cm1_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo0_cm1_aa <= u0_m0_wo0_dec1_q;
    u0_m0_wo0_cm1_ab <= d_u0_m0_wo0_bank_delayr1_q_11_q;
    u0_m0_wo0_cm1_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo0_cm1.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo0_cm1_aa,
        data_a => u0_m0_wo0_cm1_ia,
        wren_a => u0_m0_wo0_dec1_e(0),
        address_b => u0_m0_wo0_cm1_ab,
        q_b => u0_m0_wo0_cm1_iq
    );
    u0_m0_wo0_cm1_q <= u0_m0_wo0_cm1_iq(12 downto 0);

    -- u0_m0_wo0_sym_add2(ADD,94)@11 + 1
    u0_m0_wo0_sym_add2_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => d_u0_m0_wo0_wi0_r0_delayr2_q_11_q(13)) & d_u0_m0_wo0_wi0_r0_delayr2_q_11_q));
    u0_m0_wo0_sym_add2_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr21_q(13)) & u0_m0_wo0_wi0_r0_delayr21_q));
    u0_m0_wo0_sym_add2_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sym_add2_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sym_add2_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_sym_add2_a) + SIGNED(u0_m0_wo0_sym_add2_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_sym_add2_q <= u0_m0_wo0_sym_add2_o(14 downto 0);

    -- u0_m0_wo0_cm2(DUALMEM,64)@11 + 1
    u0_m0_wo0_cm2_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo0_cm2_aa <= u0_m0_wo0_dec2_q;
    u0_m0_wo0_cm2_ab <= d_u0_m0_wo0_bank_delayr2_q_11_q;
    u0_m0_wo0_cm2_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo0_cm2.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo0_cm2_aa,
        data_a => u0_m0_wo0_cm2_ia,
        wren_a => u0_m0_wo0_dec2_e(0),
        address_b => u0_m0_wo0_cm2_ab,
        q_b => u0_m0_wo0_cm2_iq
    );
    u0_m0_wo0_cm2_q <= u0_m0_wo0_cm2_iq(12 downto 0);

    -- u0_m0_wo0_sym_add3(ADD,95)@11 + 1
    u0_m0_wo0_sym_add3_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => d_u0_m0_wo0_wi0_r0_delayr3_q_11_q(13)) & d_u0_m0_wo0_wi0_r0_delayr3_q_11_q));
    u0_m0_wo0_sym_add3_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr20_q(13)) & u0_m0_wo0_wi0_r0_delayr20_q));
    u0_m0_wo0_sym_add3_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sym_add3_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sym_add3_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_sym_add3_a) + SIGNED(u0_m0_wo0_sym_add3_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_sym_add3_q <= u0_m0_wo0_sym_add3_o(14 downto 0);

    -- u0_m0_wo0_cm3(DUALMEM,67)@11 + 1
    u0_m0_wo0_cm3_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo0_cm3_aa <= u0_m0_wo0_dec3_q;
    u0_m0_wo0_cm3_ab <= d_u0_m0_wo0_bank_delayr3_q_11_q;
    u0_m0_wo0_cm3_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo0_cm3.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo0_cm3_aa,
        data_a => u0_m0_wo0_cm3_ia,
        wren_a => u0_m0_wo0_dec3_e(0),
        address_b => u0_m0_wo0_cm3_ab,
        q_b => u0_m0_wo0_cm3_iq
    );
    u0_m0_wo0_cm3_q <= u0_m0_wo0_cm3_iq(12 downto 0);

    -- u0_m0_wo0_mtree_madd4_2(MULTADD,104)@12 + 3
    u0_m0_wo0_mtree_madd4_2_a <= STD_LOGIC_VECTOR(u0_m0_wo0_cm3_q & u0_m0_wo0_cm2_q & u0_m0_wo0_cm1_q & u0_m0_wo0_cm0_q);
    u0_m0_wo0_mtree_madd4_2_b <= STD_LOGIC_VECTOR(u0_m0_wo0_sym_add3_q & u0_m0_wo0_sym_add2_q & u0_m0_wo0_sym_add1_q & u0_m0_wo0_sym_add0_q);
    u0_m0_wo0_mtree_madd4_2_reset <= areset;
    u0_m0_wo0_mtree_madd4_2_component : altmult_add
    GENERIC MAP (
        lpm_type => "altmult_add",
        dedicated_multiplier_circuitry => "YES",
        intended_device_family => "Stratix IV",
        number_of_multipliers => 4,
        representation_a => "SIGNED",
        representation_b => "SIGNED",
        width_a => 13,
        width_b => 15,
        width_result => 30,
        multiplier1_direction => "ADD",
        multiplier3_direction => "ADD",
        port_addnsub1 => "PORT_CONNECTIVITY",
        port_addnsub3 => "PORT_UNUSED",
        port_signa => "PORT_UNUSED",
        port_signb => "PORT_UNUSED",
        input_register_a0 => "CLOCK0",
        input_register_a1 => "CLOCK0",
        input_register_a2 => "CLOCK0",
        input_register_a3 => "CLOCK0",
        input_register_b0 => "CLOCK0",
        input_register_b1 => "CLOCK0",
        input_register_b2 => "CLOCK0",
        input_register_b3 => "CLOCK0",
        input_source_a0 => "DATAA",
        input_source_a1 => "DATAA",
        input_source_a2 => "DATAA",
        input_source_a3 => "DATAA",
        input_source_b0 => "DATAB",
        input_source_b1 => "DATAB",
        input_source_b2 => "DATAB",
        input_source_b3 => "DATAB",
        input_aclr_a0 => "ACLR0",
        input_aclr_a1 => "ACLR0",
        input_aclr_a2 => "ACLR0",
        input_aclr_a3 => "ACLR0",
        input_aclr_b0 => "ACLR0",
        input_aclr_b1 => "ACLR0",
        input_aclr_b2 => "ACLR0",
        input_aclr_b3 => "ACLR0",
        addnsub_multiplier_register1 => "CLOCK0",
        addnsub_multiplier_register3 => "CLOCK0",
        addnsub_multiplier_aclr1 => "ACLR0",
        addnsub_multiplier_aclr3 => "ACLR0",
        signed_register_a => "CLOCK0",
        signed_register_b => "CLOCK0",
        signed_aclr_a => "ACLR0",
        signed_aclr_b => "ACLR0",
        multiplier_register0 => "CLOCK0",
        multiplier_aclr0 => "ACLR0",
        multiplier_register1 => "CLOCK0",
        multiplier_aclr1 => "ACLR0",
        multiplier_register2 => "CLOCK0",
        multiplier_aclr2 => "ACLR0",
        multiplier_register3 => "CLOCK0",
        multiplier_aclr3 => "ACLR0",
        addnsub_multiplier_pipeline_register1 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr1 => "ACLR0",
        addnsub_multiplier_pipeline_register3 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr3 => "ACLR0",
        signed_pipeline_register_a => "CLOCK0",
        signed_pipeline_register_b => "CLOCK0",
        signed_pipeline_aclr_a => "ACLR0",
        signed_pipeline_aclr_b => "ACLR0",
        output_register => "CLOCK0",
        output_aclr => "ACLR0"
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_madd4_2_a,
        datab => u0_m0_wo0_mtree_madd4_2_b,
        clock0 => clk,
        aclr0 => u0_m0_wo0_mtree_madd4_2_reset,
        ena0 => VCC_q(0),
        result => u0_m0_wo0_mtree_madd4_2_s1
    );
    u0_m0_wo0_mtree_madd4_2_q <= u0_m0_wo0_mtree_madd4_2_s1;

    -- u0_m0_wo0_sym_add4(ADD,96)@10 + 1
    u0_m0_wo0_sym_add4_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr4_q(13)) & u0_m0_wo0_wi0_r0_delayr4_q));
    u0_m0_wo0_sym_add4_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr19_q(13)) & u0_m0_wo0_wi0_r0_delayr19_q));
    u0_m0_wo0_sym_add4_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sym_add4_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sym_add4_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_sym_add4_a) + SIGNED(u0_m0_wo0_sym_add4_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_sym_add4_q <= u0_m0_wo0_sym_add4_o(14 downto 0);

    -- u0_m0_wo0_cm4(DUALMEM,70)@10 + 1
    u0_m0_wo0_cm4_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo0_cm4_aa <= u0_m0_wo0_dec4_q;
    u0_m0_wo0_cm4_ab <= bank_u0_m0_wi0_wo0_b;
    u0_m0_wo0_cm4_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo0_cm4.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo0_cm4_aa,
        data_a => u0_m0_wo0_cm4_ia,
        wren_a => u0_m0_wo0_dec4_e(0),
        address_b => u0_m0_wo0_cm4_ab,
        q_b => u0_m0_wo0_cm4_iq
    );
    u0_m0_wo0_cm4_q <= u0_m0_wo0_cm4_iq(12 downto 0);

    -- u0_m0_wo0_sym_add5(ADD,97)@10 + 1
    u0_m0_wo0_sym_add5_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr5_q(13)) & u0_m0_wo0_wi0_r0_delayr5_q));
    u0_m0_wo0_sym_add5_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr18_q(13)) & u0_m0_wo0_wi0_r0_delayr18_q));
    u0_m0_wo0_sym_add5_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sym_add5_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sym_add5_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_sym_add5_a) + SIGNED(u0_m0_wo0_sym_add5_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_sym_add5_q <= u0_m0_wo0_sym_add5_o(14 downto 0);

    -- u0_m0_wo0_cm5(DUALMEM,73)@10 + 1
    u0_m0_wo0_cm5_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo0_cm5_aa <= u0_m0_wo0_dec5_q;
    u0_m0_wo0_cm5_ab <= bank_u0_m0_wi0_wo0_b;
    u0_m0_wo0_cm5_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo0_cm5.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo0_cm5_aa,
        data_a => u0_m0_wo0_cm5_ia,
        wren_a => u0_m0_wo0_dec5_e(0),
        address_b => u0_m0_wo0_cm5_ab,
        q_b => u0_m0_wo0_cm5_iq
    );
    u0_m0_wo0_cm5_q <= u0_m0_wo0_cm5_iq(12 downto 0);

    -- u0_m0_wo0_sym_add6(ADD,98)@10 + 1
    u0_m0_wo0_sym_add6_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr6_q(13)) & u0_m0_wo0_wi0_r0_delayr6_q));
    u0_m0_wo0_sym_add6_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr17_q(13)) & u0_m0_wo0_wi0_r0_delayr17_q));
    u0_m0_wo0_sym_add6_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sym_add6_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sym_add6_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_sym_add6_a) + SIGNED(u0_m0_wo0_sym_add6_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_sym_add6_q <= u0_m0_wo0_sym_add6_o(14 downto 0);

    -- u0_m0_wo0_cm6(DUALMEM,76)@10 + 1
    u0_m0_wo0_cm6_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo0_cm6_aa <= u0_m0_wo0_dec6_q;
    u0_m0_wo0_cm6_ab <= bank_u0_m0_wi0_wo0_b;
    u0_m0_wo0_cm6_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo0_cm6.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo0_cm6_aa,
        data_a => u0_m0_wo0_cm6_ia,
        wren_a => u0_m0_wo0_dec6_e(0),
        address_b => u0_m0_wo0_cm6_ab,
        q_b => u0_m0_wo0_cm6_iq
    );
    u0_m0_wo0_cm6_q <= u0_m0_wo0_cm6_iq(12 downto 0);

    -- u0_m0_wo0_sym_add7(ADD,99)@10 + 1
    u0_m0_wo0_sym_add7_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr7_q(13)) & u0_m0_wo0_wi0_r0_delayr7_q));
    u0_m0_wo0_sym_add7_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr16_q(13)) & u0_m0_wo0_wi0_r0_delayr16_q));
    u0_m0_wo0_sym_add7_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sym_add7_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sym_add7_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_sym_add7_a) + SIGNED(u0_m0_wo0_sym_add7_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_sym_add7_q <= u0_m0_wo0_sym_add7_o(14 downto 0);

    -- u0_m0_wo0_cm7(DUALMEM,79)@10 + 1
    u0_m0_wo0_cm7_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo0_cm7_aa <= u0_m0_wo0_dec7_q;
    u0_m0_wo0_cm7_ab <= bank_u0_m0_wi0_wo0_b;
    u0_m0_wo0_cm7_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo0_cm7.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo0_cm7_aa,
        data_a => u0_m0_wo0_cm7_ia,
        wren_a => u0_m0_wo0_dec7_e(0),
        address_b => u0_m0_wo0_cm7_ab,
        q_b => u0_m0_wo0_cm7_iq
    );
    u0_m0_wo0_cm7_q <= u0_m0_wo0_cm7_iq(12 downto 0);

    -- u0_m0_wo0_mtree_madd4_1(MULTADD,105)@11 + 3
    u0_m0_wo0_mtree_madd4_1_a <= STD_LOGIC_VECTOR(u0_m0_wo0_cm7_q & u0_m0_wo0_cm6_q & u0_m0_wo0_cm5_q & u0_m0_wo0_cm4_q);
    u0_m0_wo0_mtree_madd4_1_b <= STD_LOGIC_VECTOR(u0_m0_wo0_sym_add7_q & u0_m0_wo0_sym_add6_q & u0_m0_wo0_sym_add5_q & u0_m0_wo0_sym_add4_q);
    u0_m0_wo0_mtree_madd4_1_reset <= areset;
    u0_m0_wo0_mtree_madd4_1_component : altmult_add
    GENERIC MAP (
        lpm_type => "altmult_add",
        dedicated_multiplier_circuitry => "YES",
        intended_device_family => "Stratix IV",
        number_of_multipliers => 4,
        representation_a => "SIGNED",
        representation_b => "SIGNED",
        width_a => 13,
        width_b => 15,
        width_result => 30,
        multiplier1_direction => "ADD",
        multiplier3_direction => "ADD",
        port_addnsub1 => "PORT_CONNECTIVITY",
        port_addnsub3 => "PORT_UNUSED",
        port_signa => "PORT_UNUSED",
        port_signb => "PORT_UNUSED",
        input_register_a0 => "CLOCK0",
        input_register_a1 => "CLOCK0",
        input_register_a2 => "CLOCK0",
        input_register_a3 => "CLOCK0",
        input_register_b0 => "CLOCK0",
        input_register_b1 => "CLOCK0",
        input_register_b2 => "CLOCK0",
        input_register_b3 => "CLOCK0",
        input_source_a0 => "DATAA",
        input_source_a1 => "DATAA",
        input_source_a2 => "DATAA",
        input_source_a3 => "DATAA",
        input_source_b0 => "DATAB",
        input_source_b1 => "DATAB",
        input_source_b2 => "DATAB",
        input_source_b3 => "DATAB",
        input_aclr_a0 => "ACLR0",
        input_aclr_a1 => "ACLR0",
        input_aclr_a2 => "ACLR0",
        input_aclr_a3 => "ACLR0",
        input_aclr_b0 => "ACLR0",
        input_aclr_b1 => "ACLR0",
        input_aclr_b2 => "ACLR0",
        input_aclr_b3 => "ACLR0",
        addnsub_multiplier_register1 => "CLOCK0",
        addnsub_multiplier_register3 => "CLOCK0",
        addnsub_multiplier_aclr1 => "ACLR0",
        addnsub_multiplier_aclr3 => "ACLR0",
        signed_register_a => "CLOCK0",
        signed_register_b => "CLOCK0",
        signed_aclr_a => "ACLR0",
        signed_aclr_b => "ACLR0",
        multiplier_register0 => "CLOCK0",
        multiplier_aclr0 => "ACLR0",
        multiplier_register1 => "CLOCK0",
        multiplier_aclr1 => "ACLR0",
        multiplier_register2 => "CLOCK0",
        multiplier_aclr2 => "ACLR0",
        multiplier_register3 => "CLOCK0",
        multiplier_aclr3 => "ACLR0",
        addnsub_multiplier_pipeline_register1 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr1 => "ACLR0",
        addnsub_multiplier_pipeline_register3 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr3 => "ACLR0",
        signed_pipeline_register_a => "CLOCK0",
        signed_pipeline_register_b => "CLOCK0",
        signed_pipeline_aclr_a => "ACLR0",
        signed_pipeline_aclr_b => "ACLR0",
        output_register => "CLOCK0",
        output_aclr => "ACLR0"
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_madd4_1_a,
        datab => u0_m0_wo0_mtree_madd4_1_b,
        clock0 => clk,
        aclr0 => u0_m0_wo0_mtree_madd4_1_reset,
        ena0 => VCC_q(0),
        result => u0_m0_wo0_mtree_madd4_1_s1
    );
    u0_m0_wo0_mtree_madd4_1_q <= u0_m0_wo0_mtree_madd4_1_s1;

    -- u0_m0_wo0_sym_add8(ADD,100)@10 + 1
    u0_m0_wo0_sym_add8_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr8_q(13)) & u0_m0_wo0_wi0_r0_delayr8_q));
    u0_m0_wo0_sym_add8_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr15_q(13)) & u0_m0_wo0_wi0_r0_delayr15_q));
    u0_m0_wo0_sym_add8_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sym_add8_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sym_add8_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_sym_add8_a) + SIGNED(u0_m0_wo0_sym_add8_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_sym_add8_q <= u0_m0_wo0_sym_add8_o(14 downto 0);

    -- u0_m0_wo0_cm8(DUALMEM,82)@10 + 1
    u0_m0_wo0_cm8_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo0_cm8_aa <= u0_m0_wo0_dec8_q;
    u0_m0_wo0_cm8_ab <= bank_u0_m0_wi0_wo0_b;
    u0_m0_wo0_cm8_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo0_cm8.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo0_cm8_aa,
        data_a => u0_m0_wo0_cm8_ia,
        wren_a => u0_m0_wo0_dec8_e(0),
        address_b => u0_m0_wo0_cm8_ab,
        q_b => u0_m0_wo0_cm8_iq
    );
    u0_m0_wo0_cm8_q <= u0_m0_wo0_cm8_iq(12 downto 0);

    -- u0_m0_wo0_sym_add9(ADD,101)@10 + 1
    u0_m0_wo0_sym_add9_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr9_q(13)) & u0_m0_wo0_wi0_r0_delayr9_q));
    u0_m0_wo0_sym_add9_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr14_q(13)) & u0_m0_wo0_wi0_r0_delayr14_q));
    u0_m0_wo0_sym_add9_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sym_add9_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sym_add9_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_sym_add9_a) + SIGNED(u0_m0_wo0_sym_add9_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_sym_add9_q <= u0_m0_wo0_sym_add9_o(14 downto 0);

    -- u0_m0_wo0_cm9(DUALMEM,85)@10 + 1
    u0_m0_wo0_cm9_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo0_cm9_aa <= u0_m0_wo0_dec9_q;
    u0_m0_wo0_cm9_ab <= bank_u0_m0_wi0_wo0_b;
    u0_m0_wo0_cm9_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo0_cm9.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo0_cm9_aa,
        data_a => u0_m0_wo0_cm9_ia,
        wren_a => u0_m0_wo0_dec9_e(0),
        address_b => u0_m0_wo0_cm9_ab,
        q_b => u0_m0_wo0_cm9_iq
    );
    u0_m0_wo0_cm9_q <= u0_m0_wo0_cm9_iq(12 downto 0);

    -- u0_m0_wo0_sym_add10(ADD,102)@10 + 1
    u0_m0_wo0_sym_add10_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr10_q(13)) & u0_m0_wo0_wi0_r0_delayr10_q));
    u0_m0_wo0_sym_add10_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr13_q(13)) & u0_m0_wo0_wi0_r0_delayr13_q));
    u0_m0_wo0_sym_add10_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sym_add10_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sym_add10_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_sym_add10_a) + SIGNED(u0_m0_wo0_sym_add10_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_sym_add10_q <= u0_m0_wo0_sym_add10_o(14 downto 0);

    -- u0_m0_wo0_cm10(DUALMEM,88)@10 + 1
    u0_m0_wo0_cm10_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo0_cm10_aa <= u0_m0_wo0_dec10_q;
    u0_m0_wo0_cm10_ab <= bank_u0_m0_wi0_wo0_b;
    u0_m0_wo0_cm10_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo0_cm10.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo0_cm10_aa,
        data_a => u0_m0_wo0_cm10_ia,
        wren_a => u0_m0_wo0_dec10_e(0),
        address_b => u0_m0_wo0_cm10_ab,
        q_b => u0_m0_wo0_cm10_iq
    );
    u0_m0_wo0_cm10_q <= u0_m0_wo0_cm10_iq(12 downto 0);

    -- u0_m0_wo0_sym_add11(ADD,103)@10 + 1
    u0_m0_wo0_sym_add11_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr11_q(13)) & u0_m0_wo0_wi0_r0_delayr11_q));
    u0_m0_wo0_sym_add11_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((14 downto 14 => u0_m0_wo0_wi0_r0_delayr12_q(13)) & u0_m0_wo0_wi0_r0_delayr12_q));
    u0_m0_wo0_sym_add11_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_sym_add11_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_sym_add11_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_sym_add11_a) + SIGNED(u0_m0_wo0_sym_add11_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_sym_add11_q <= u0_m0_wo0_sym_add11_o(14 downto 0);

    -- u0_m0_wo0_cm11(DUALMEM,91)@10 + 1
    u0_m0_wo0_cm11_ia <= STD_LOGIC_VECTOR(d_busIn_writedata_11_q(12 downto 0));
    u0_m0_wo0_cm11_aa <= u0_m0_wo0_dec11_q;
    u0_m0_wo0_cm11_ab <= bank_u0_m0_wi0_wo0_b;
    u0_m0_wo0_cm11_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 13,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 13,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "UNREGISTERED",
        outdata_aclr_b => "NONE",
        clock_enable_output_b => "BYPASS",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => safe_path("nmwtest/nmwtest_dut_filter1_u0_m0_wo0_cm11.hex"),
        init_file_layout => "PORT_B",
        intended_device_family => "Stratix IV"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo0_cm11_aa,
        data_a => u0_m0_wo0_cm11_ia,
        wren_a => u0_m0_wo0_dec11_e(0),
        address_b => u0_m0_wo0_cm11_ab,
        q_b => u0_m0_wo0_cm11_iq
    );
    u0_m0_wo0_cm11_q <= u0_m0_wo0_cm11_iq(12 downto 0);

    -- u0_m0_wo0_mtree_madd4_0(MULTADD,106)@11 + 3
    u0_m0_wo0_mtree_madd4_0_a <= STD_LOGIC_VECTOR(u0_m0_wo0_cm11_q & u0_m0_wo0_cm10_q & u0_m0_wo0_cm9_q & u0_m0_wo0_cm8_q);
    u0_m0_wo0_mtree_madd4_0_b <= STD_LOGIC_VECTOR(u0_m0_wo0_sym_add11_q & u0_m0_wo0_sym_add10_q & u0_m0_wo0_sym_add9_q & u0_m0_wo0_sym_add8_q);
    u0_m0_wo0_mtree_madd4_0_reset <= areset;
    u0_m0_wo0_mtree_madd4_0_component : altmult_add
    GENERIC MAP (
        lpm_type => "altmult_add",
        dedicated_multiplier_circuitry => "YES",
        intended_device_family => "Stratix IV",
        number_of_multipliers => 4,
        representation_a => "SIGNED",
        representation_b => "SIGNED",
        width_a => 13,
        width_b => 15,
        width_result => 30,
        multiplier1_direction => "ADD",
        multiplier3_direction => "ADD",
        port_addnsub1 => "PORT_CONNECTIVITY",
        port_addnsub3 => "PORT_UNUSED",
        port_signa => "PORT_UNUSED",
        port_signb => "PORT_UNUSED",
        input_register_a0 => "CLOCK0",
        input_register_a1 => "CLOCK0",
        input_register_a2 => "CLOCK0",
        input_register_a3 => "CLOCK0",
        input_register_b0 => "CLOCK0",
        input_register_b1 => "CLOCK0",
        input_register_b2 => "CLOCK0",
        input_register_b3 => "CLOCK0",
        input_source_a0 => "DATAA",
        input_source_a1 => "DATAA",
        input_source_a2 => "DATAA",
        input_source_a3 => "DATAA",
        input_source_b0 => "DATAB",
        input_source_b1 => "DATAB",
        input_source_b2 => "DATAB",
        input_source_b3 => "DATAB",
        input_aclr_a0 => "ACLR0",
        input_aclr_a1 => "ACLR0",
        input_aclr_a2 => "ACLR0",
        input_aclr_a3 => "ACLR0",
        input_aclr_b0 => "ACLR0",
        input_aclr_b1 => "ACLR0",
        input_aclr_b2 => "ACLR0",
        input_aclr_b3 => "ACLR0",
        addnsub_multiplier_register1 => "CLOCK0",
        addnsub_multiplier_register3 => "CLOCK0",
        addnsub_multiplier_aclr1 => "ACLR0",
        addnsub_multiplier_aclr3 => "ACLR0",
        signed_register_a => "CLOCK0",
        signed_register_b => "CLOCK0",
        signed_aclr_a => "ACLR0",
        signed_aclr_b => "ACLR0",
        multiplier_register0 => "CLOCK0",
        multiplier_aclr0 => "ACLR0",
        multiplier_register1 => "CLOCK0",
        multiplier_aclr1 => "ACLR0",
        multiplier_register2 => "CLOCK0",
        multiplier_aclr2 => "ACLR0",
        multiplier_register3 => "CLOCK0",
        multiplier_aclr3 => "ACLR0",
        addnsub_multiplier_pipeline_register1 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr1 => "ACLR0",
        addnsub_multiplier_pipeline_register3 => "CLOCK0",
        addnsub_multiplier_pipeline_aclr3 => "ACLR0",
        signed_pipeline_register_a => "CLOCK0",
        signed_pipeline_register_b => "CLOCK0",
        signed_pipeline_aclr_a => "ACLR0",
        signed_pipeline_aclr_b => "ACLR0",
        output_register => "CLOCK0",
        output_aclr => "ACLR0"
    )
    PORT MAP (
        dataa => u0_m0_wo0_mtree_madd4_0_a,
        datab => u0_m0_wo0_mtree_madd4_0_b,
        clock0 => clk,
        aclr0 => u0_m0_wo0_mtree_madd4_0_reset,
        ena0 => VCC_q(0),
        result => u0_m0_wo0_mtree_madd4_0_s1
    );
    u0_m0_wo0_mtree_madd4_0_q <= u0_m0_wo0_mtree_madd4_0_s1;

    -- u0_m0_wo0_mtree_add0_0(ADD,107)@14 + 1
    u0_m0_wo0_mtree_add0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_madd4_0_q(29)) & u0_m0_wo0_mtree_madd4_0_q));
    u0_m0_wo0_mtree_add0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((30 downto 30 => u0_m0_wo0_mtree_madd4_1_q(29)) & u0_m0_wo0_mtree_madd4_1_q));
    u0_m0_wo0_mtree_add0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_0_a) + SIGNED(u0_m0_wo0_mtree_add0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_0_q <= u0_m0_wo0_mtree_add0_0_o(30 downto 0);

    -- u0_m0_wo0_mtree_add1_0(ADD,108)@15 + 1
    u0_m0_wo0_mtree_add1_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 31 => u0_m0_wo0_mtree_add0_0_q(30)) & u0_m0_wo0_mtree_add0_0_q));
    u0_m0_wo0_mtree_add1_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((31 downto 30 => u0_m0_wo0_mtree_madd4_2_q(29)) & u0_m0_wo0_mtree_madd4_2_q));
    u0_m0_wo0_mtree_add1_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add1_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add1_0_a) + SIGNED(u0_m0_wo0_mtree_add1_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add1_0_q <= u0_m0_wo0_mtree_add1_0_o(31 downto 0);

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- d_u0_m0_wo0_compute_q_15(DELAY,435)@11 + 4
    d_u0_m0_wo0_compute_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 4)
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_11_q, xout => d_u0_m0_wo0_compute_q_15_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_oseq_gated_reg(REG,109)@15 + 1
    u0_m0_wo0_oseq_gated_reg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(d_u0_m0_wo0_compute_q_15_q);
        END IF;
    END PROCESS;

    -- xOut(PORTOUT,429)@16 + 1
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_mtree_add1_0_q;
    xOut_1 <= u0_m0_wo1_mtree_add1_0_q;
    xOut_2 <= u1_m0_wo0_mtree_add1_0_q;
    xOut_3 <= u1_m0_wo1_mtree_add1_0_q;

END normal;