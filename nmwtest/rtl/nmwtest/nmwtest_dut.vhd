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

-- VHDL created from nmwtest_dut
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
entity nmwtest_dut is
    port (
        d_0 : in std_logic_vector(13 downto 0);  -- sfix14_en10
        d_1 : in std_logic_vector(13 downto 0);  -- sfix14_en10
        v_s : in std_logic_vector(0 downto 0);  -- ufix1
        c_s : in std_logic_vector(7 downto 0);  -- ufix8
        b_0 : in std_logic_vector(0 downto 0);  -- ufix1
        b_1 : in std_logic_vector(0 downto 0);  -- ufix1
        dout_0 : out std_logic_vector(13 downto 0);  -- sfix14_en10
        dout_1 : out std_logic_vector(13 downto 0);  -- sfix14_en10
        dout_2 : out std_logic_vector(13 downto 0);  -- sfix14_en10
        dout_3 : out std_logic_vector(13 downto 0);  -- sfix14_en10
        vout_s : out std_logic_vector(0 downto 0);  -- ufix1
        cout_s : out std_logic_vector(7 downto 0);  -- ufix8
        busIn_writedata : in std_logic_vector(15 downto 0);  -- ufix16
        busIn_address : in std_logic_vector(9 downto 0);  -- ufix10
        busIn_write : in std_logic_vector(0 downto 0);  -- ufix1
        clk : in std_logic;
        areset : in std_logic;
        h_areset : in std_logic
    );
end nmwtest_dut;

architecture normal of nmwtest_dut is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 270007";
    
    -- nmwtest_dut_filter1 component declaration
    -- inputs
    --  busIn_writedata <= busIn_writedata, width=16, real=0
    --  busIn_address <= busIn_address, width=10, real=0
    --  busIn_write <= busIn_write, width=1, real=0
    --  xIn_0 <= d_0, width=14, real=0
    --  xIn_1 <= d_1, width=14, real=0
    --  xIn_v <= v_s, width=1, real=0
    --  xIn_c <= c_s, width=8, real=0
    --  bankIn_0 <= b_0, width=1, real=0
    --  bankIn_1 <= b_1, width=1, real=0
    -- outputs
    --  xOut_0 => filter1_xOut_0, width=32, real=0
    --  xOut_1 => filter1_xOut_1, width=32, real=0
    --  xOut_2 => filter1_xOut_2, width=32, real=0
    --  xOut_3 => filter1_xOut_3, width=32, real=0
    --  xOut_v => filter1_xOut_v, width=1, real=0
    --  xOut_c => filter1_xOut_c, width=8, real=0
    component nmwtest_dut_filter1 is
        port (
            busIn_writedata : in std_logic_vector(15 downto 0);
            busIn_address : in std_logic_vector(9 downto 0);
            busIn_write : in std_logic_vector(0 downto 0);
            xIn_0 : in std_logic_vector(13 downto 0);
            xIn_1 : in std_logic_vector(13 downto 0);
            xIn_v : in std_logic_vector(0 downto 0);
            xIn_c : in std_logic_vector(7 downto 0);
            bankIn_0 : in std_logic_vector(0 downto 0);
            bankIn_1 : in std_logic_vector(0 downto 0);
            xOut_0 : out std_logic_vector(31 downto 0);
            xOut_1 : out std_logic_vector(31 downto 0);
            xOut_2 : out std_logic_vector(31 downto 0);
            xOut_3 : out std_logic_vector(31 downto 0);
            xOut_v : out std_logic_vector(0 downto 0);
            xOut_c : out std_logic_vector(7 downto 0);
            clk : in std_logic;
            areset : in std_logic;
            h_areset : in std_logic
        );
    end component;


    -- nmwtest_dut_scale1 component declaration
    -- inputs
    --  xIn_0 <= filter1_xOut_0, width=32, real=0
    --  xIn_1 <= filter1_xOut_1, width=32, real=0
    --  xIn_2 <= filter1_xOut_2, width=32, real=0
    --  xIn_3 <= filter1_xOut_3, width=32, real=0
    --  xIn_v <= filter1_xOut_v, width=1, real=0
    --  xIn_c <= filter1_xOut_c, width=8, real=0
    --  gain_i <= GND_q, width=1, real=0
    -- outputs
    --  qOut_0 => scale1_qOut_0, width=14, real=0
    --  qOut_1 => scale1_qOut_1, width=14, real=0
    --  qOut_2 => scale1_qOut_2, width=14, real=0
    --  qOut_3 => scale1_qOut_3, width=14, real=0
    --  qOut_v => scale1_qOut_v, width=1, real=0
    --  qOut_c => scale1_qOut_c, width=8, real=0
    --  eOut_0 => scale1_eOut_0, width=1, real=0
    --  eOut_1 => scale1_eOut_1, width=1, real=0
    --  eOut_2 => scale1_eOut_2, width=1, real=0
    --  eOut_3 => scale1_eOut_3, width=1, real=0
    component nmwtest_dut_scale1 is
        port (
            xIn_0 : in std_logic_vector(31 downto 0);
            xIn_1 : in std_logic_vector(31 downto 0);
            xIn_2 : in std_logic_vector(31 downto 0);
            xIn_3 : in std_logic_vector(31 downto 0);
            xIn_v : in std_logic_vector(0 downto 0);
            xIn_c : in std_logic_vector(7 downto 0);
            gain_i : in std_logic_vector(0 downto 0);
            qOut_0 : out std_logic_vector(13 downto 0);
            qOut_1 : out std_logic_vector(13 downto 0);
            qOut_2 : out std_logic_vector(13 downto 0);
            qOut_3 : out std_logic_vector(13 downto 0);
            qOut_v : out std_logic_vector(0 downto 0);
            qOut_c : out std_logic_vector(7 downto 0);
            eOut_0 : out std_logic_vector(0 downto 0);
            eOut_1 : out std_logic_vector(0 downto 0);
            eOut_2 : out std_logic_vector(0 downto 0);
            eOut_3 : out std_logic_vector(0 downto 0);
            clk : in std_logic;
            areset : in std_logic
        );
    end component;


    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal filter1_busIn_writedata : STD_LOGIC_VECTOR (15 downto 0);
    signal filter1_busIn_address : STD_LOGIC_VECTOR (9 downto 0);
    signal filter1_busIn_write : STD_LOGIC_VECTOR (0 downto 0);
    signal filter1_xIn_0 : STD_LOGIC_VECTOR (13 downto 0);
    signal filter1_xIn_1 : STD_LOGIC_VECTOR (13 downto 0);
    signal filter1_xIn_v : STD_LOGIC_VECTOR (0 downto 0);
    signal filter1_xIn_c : STD_LOGIC_VECTOR (7 downto 0);
    signal filter1_bankIn_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal filter1_bankIn_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal filter1_xOut_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal filter1_xOut_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal filter1_xOut_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal filter1_xOut_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal filter1_xOut_v : STD_LOGIC_VECTOR (0 downto 0);
    signal filter1_xOut_c : STD_LOGIC_VECTOR (7 downto 0);
    signal scale1_xIn_0 : STD_LOGIC_VECTOR (31 downto 0);
    signal scale1_xIn_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal scale1_xIn_2 : STD_LOGIC_VECTOR (31 downto 0);
    signal scale1_xIn_3 : STD_LOGIC_VECTOR (31 downto 0);
    signal scale1_xIn_v : STD_LOGIC_VECTOR (0 downto 0);
    signal scale1_xIn_c : STD_LOGIC_VECTOR (7 downto 0);
    signal scale1_gain_i : STD_LOGIC_VECTOR (0 downto 0);
    signal scale1_qOut_0 : STD_LOGIC_VECTOR (13 downto 0);
    signal scale1_qOut_1 : STD_LOGIC_VECTOR (13 downto 0);
    signal scale1_qOut_2 : STD_LOGIC_VECTOR (13 downto 0);
    signal scale1_qOut_3 : STD_LOGIC_VECTOR (13 downto 0);
    signal scale1_qOut_v : STD_LOGIC_VECTOR (0 downto 0);
    signal scale1_qOut_c : STD_LOGIC_VECTOR (7 downto 0);

begin


    -- VCC(CONSTANT,1)

    -- GND(CONSTANT,0)
    GND_q <= "0";

    -- b_1(GPIN,8)

    -- b_0(GPIN,7)

    -- c_s(GPIN,6)

    -- v_s(GPIN,5)

    -- d_1(GPIN,4)

    -- d_0(GPIN,3)

    -- busIn(BUSIN,15)

    -- filter1(BLACKBOX,16)
    filter1_busIn_writedata <= busIn_writedata;
    filter1_busIn_address <= busIn_address;
    filter1_busIn_write <= busIn_write;
    filter1_xIn_0 <= d_0;
    filter1_xIn_1 <= d_1;
    filter1_xIn_v <= v_s;
    filter1_xIn_c <= c_s;
    filter1_bankIn_0 <= b_0;
    filter1_bankIn_1 <= b_1;
    thefilter1 : nmwtest_dut_filter1
    PORT MAP (
        busIn_writedata => filter1_busIn_writedata,
        busIn_address => filter1_busIn_address,
        busIn_write => filter1_busIn_write,
        xIn_0 => filter1_xIn_0,
        xIn_1 => filter1_xIn_1,
        xIn_v => filter1_xIn_v,
        xIn_c => filter1_xIn_c,
        bankIn_0 => filter1_bankIn_0,
        bankIn_1 => filter1_bankIn_1,
        xOut_0 => filter1_xOut_0,
        xOut_1 => filter1_xOut_1,
        xOut_2 => filter1_xOut_2,
        xOut_3 => filter1_xOut_3,
        xOut_v => filter1_xOut_v,
        xOut_c => filter1_xOut_c,
        clk => clk,
        areset => areset,
        h_areset => h_areset
    );

    -- scale1(BLACKBOX,17)
    scale1_xIn_0 <= filter1_xOut_0;
    scale1_xIn_1 <= filter1_xOut_1;
    scale1_xIn_2 <= filter1_xOut_2;
    scale1_xIn_3 <= filter1_xOut_3;
    scale1_xIn_v <= filter1_xOut_v;
    scale1_xIn_c <= filter1_xOut_c;
    scale1_gain_i <= GND_q;
    thescale1 : nmwtest_dut_scale1
    PORT MAP (
        xIn_0 => scale1_xIn_0,
        xIn_1 => scale1_xIn_1,
        xIn_2 => scale1_xIn_2,
        xIn_3 => scale1_xIn_3,
        xIn_v => scale1_xIn_v,
        xIn_c => scale1_xIn_c,
        gain_i => scale1_gain_i,
        qOut_0 => scale1_qOut_0,
        qOut_1 => scale1_qOut_1,
        qOut_2 => scale1_qOut_2,
        qOut_3 => scale1_qOut_3,
        qOut_v => scale1_qOut_v,
        qOut_c => scale1_qOut_c,
        clk => clk,
        areset => areset
    );

    -- dout_0(GPOUT,9)
    dout_0 <= scale1_qOut_0;

    -- dout_1(GPOUT,10)
    dout_1 <= scale1_qOut_1;

    -- dout_2(GPOUT,11)
    dout_2 <= scale1_qOut_2;

    -- dout_3(GPOUT,12)
    dout_3 <= scale1_qOut_3;

    -- vout_s(GPOUT,13)
    vout_s <= scale1_qOut_v;

    -- cout_s(GPOUT,14)
    cout_s <= scale1_qOut_c;

END normal;
