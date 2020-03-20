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

-- VHDL created from nmwtest_dut_scale1
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
entity nmwtest_dut_scale1 is
    port (
        xIn_v : in std_logic_vector(0 downto 0);  -- sfix1
        xIn_c : in std_logic_vector(7 downto 0);  -- sfix8
        xIn_0 : in std_logic_vector(31 downto 0);  -- sfix32
        xIn_1 : in std_logic_vector(31 downto 0);  -- sfix32
        xIn_2 : in std_logic_vector(31 downto 0);  -- sfix32
        xIn_3 : in std_logic_vector(31 downto 0);  -- sfix32
        gain_i : in std_logic_vector(0 downto 0);  -- sfix1
        qOut_v : out std_logic_vector(0 downto 0);  -- ufix1
        qOut_c : out std_logic_vector(7 downto 0);  -- ufix8
        qOut_0 : out std_logic_vector(13 downto 0);  -- sfix14
        qOut_1 : out std_logic_vector(13 downto 0);  -- sfix14
        qOut_2 : out std_logic_vector(13 downto 0);  -- sfix14
        qOut_3 : out std_logic_vector(13 downto 0);  -- sfix14
        eOut_0 : out std_logic_vector(0 downto 0);  -- sfix1
        eOut_1 : out std_logic_vector(0 downto 0);  -- sfix1
        eOut_2 : out std_logic_vector(0 downto 0);  -- sfix1
        eOut_3 : out std_logic_vector(0 downto 0);  -- sfix1
        clk : in std_logic;
        areset : in std_logic
    );
end nmwtest_dut_scale1;

architecture normal of nmwtest_dut_scale1 is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 270007";
    
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_shiftsel_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_shiftsel_qint : STD_LOGIC_VECTOR (31 downto 0);
    signal u1_shiftsel_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u1_shiftsel_qint : STD_LOGIC_VECTOR (31 downto 0);
    signal u2_shiftsel_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u2_shiftsel_qint : STD_LOGIC_VECTOR (31 downto 0);
    signal u3_shiftsel_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u3_shiftsel_qint : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_bitsel_in : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_bitsel_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u1_bitsel_in : STD_LOGIC_VECTOR (31 downto 0);
    signal u1_bitsel_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u2_bitsel_in : STD_LOGIC_VECTOR (31 downto 0);
    signal u2_bitsel_b : STD_LOGIC_VECTOR (22 downto 0);
    signal u3_bitsel_in : STD_LOGIC_VECTOR (31 downto 0);
    signal u3_bitsel_b : STD_LOGIC_VECTOR (22 downto 0);

begin


    -- GND(CONSTANT,0)

    -- VCC(CONSTANT,1)
    VCC_q <= "1";

    -- u3_shiftsel(BITSHIFT,10)@0
    u3_shiftsel_qint <= xIn_3;
    u3_shiftsel_q <= u3_shiftsel_qint(31 downto 0);

    -- u3_bitsel(BITSELECT,11)@0
    u3_bitsel_in <= STD_LOGIC_VECTOR(u3_shiftsel_q);
    u3_bitsel_b <= STD_LOGIC_VECTOR(u3_bitsel_in(31 downto 9));

    -- u2_shiftsel(BITSHIFT,8)@0
    u2_shiftsel_qint <= xIn_2;
    u2_shiftsel_q <= u2_shiftsel_qint(31 downto 0);

    -- u2_bitsel(BITSELECT,9)@0
    u2_bitsel_in <= STD_LOGIC_VECTOR(u2_shiftsel_q);
    u2_bitsel_b <= STD_LOGIC_VECTOR(u2_bitsel_in(31 downto 9));

    -- u1_shiftsel(BITSHIFT,6)@0
    u1_shiftsel_qint <= xIn_1;
    u1_shiftsel_q <= u1_shiftsel_qint(31 downto 0);

    -- u1_bitsel(BITSELECT,7)@0
    u1_bitsel_in <= STD_LOGIC_VECTOR(u1_shiftsel_q);
    u1_bitsel_b <= STD_LOGIC_VECTOR(u1_bitsel_in(31 downto 9));

    -- u0_shiftsel(BITSHIFT,4)@0
    u0_shiftsel_qint <= xIn_0;
    u0_shiftsel_q <= u0_shiftsel_qint(31 downto 0);

    -- u0_bitsel(BITSELECT,5)@0
    u0_bitsel_in <= STD_LOGIC_VECTOR(u0_shiftsel_q);
    u0_bitsel_b <= STD_LOGIC_VECTOR(u0_bitsel_in(31 downto 9));

    -- xIn(PORTIN,2)@0

    -- qOut(PORTOUT,12)@0 + 1
    qOut_v <= xIn_v;
    qOut_c <= xIn_c;
    qOut_0 <= u0_bitsel_b(13 downto 0);
    qOut_1 <= u1_bitsel_b(13 downto 0);
    qOut_2 <= u2_bitsel_b(13 downto 0);
    qOut_3 <= u3_bitsel_b(13 downto 0);
    eOut_0 <= VCC_q;
    eOut_1 <= VCC_q;
    eOut_2 <= VCC_q;
    eOut_3 <= VCC_q;

END normal;
