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
--use work.dspba_sim_library_package.all;
entity nmwtest_dut_filter1_atb is
end;

architecture normal of nmwtest_dut_filter1_atb is

component nmwtest_dut_filter1 is
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
end component;

component nmwtest_dut_filter1_stm is
    port (
        xIn_v_stm : out std_logic_vector(0 downto 0);
        xIn_c_stm : out std_logic_vector(7 downto 0);
        xIn_0_stm : out std_logic_vector(13 downto 0);
        xIn_1_stm : out std_logic_vector(13 downto 0);
        bankIn_0_stm : out std_logic_vector(0 downto 0);
        bankIn_1_stm : out std_logic_vector(0 downto 0);
        busIn_writedata_stm : out std_logic_vector(15 downto 0);
        busIn_address_stm : out std_logic_vector(9 downto 0);
        busIn_write_stm : out std_logic_vector(0 downto 0);
        xOut_v_stm : out std_logic_vector(0 downto 0);
        xOut_c_stm : out std_logic_vector(7 downto 0);
        xOut_0_stm : out std_logic_vector(31 downto 0);
        xOut_1_stm : out std_logic_vector(31 downto 0);
        xOut_2_stm : out std_logic_vector(31 downto 0);
        xOut_3_stm : out std_logic_vector(31 downto 0);
        clk : out std_logic;
        areset : out std_logic;
        h_areset : out std_logic
    );
end component;

signal xIn_v_stm : STD_LOGIC_VECTOR (0 downto 0);
signal xIn_c_stm : STD_LOGIC_VECTOR (7 downto 0);
signal xIn_0_stm : STD_LOGIC_VECTOR (13 downto 0);
signal xIn_1_stm : STD_LOGIC_VECTOR (13 downto 0);
signal bankIn_0_stm : STD_LOGIC_VECTOR (0 downto 0);
signal bankIn_1_stm : STD_LOGIC_VECTOR (0 downto 0);
signal busIn_writedata_stm : STD_LOGIC_VECTOR (15 downto 0);
signal busIn_address_stm : STD_LOGIC_VECTOR (9 downto 0);
signal busIn_write_stm : STD_LOGIC_VECTOR (0 downto 0);
signal xOut_v_stm : STD_LOGIC_VECTOR (0 downto 0);
signal xOut_c_stm : STD_LOGIC_VECTOR (7 downto 0);
signal xOut_0_stm : STD_LOGIC_VECTOR (31 downto 0);
signal xOut_1_stm : STD_LOGIC_VECTOR (31 downto 0);
signal xOut_2_stm : STD_LOGIC_VECTOR (31 downto 0);
signal xOut_3_stm : STD_LOGIC_VECTOR (31 downto 0);
signal xIn_v_dut : STD_LOGIC_VECTOR (0 downto 0);
signal xIn_c_dut : STD_LOGIC_VECTOR (7 downto 0);
signal xIn_0_dut : STD_LOGIC_VECTOR (13 downto 0);
signal xIn_1_dut : STD_LOGIC_VECTOR (13 downto 0);
signal bankIn_0_dut : STD_LOGIC_VECTOR (0 downto 0);
signal bankIn_1_dut : STD_LOGIC_VECTOR (0 downto 0);
signal busIn_writedata_dut : STD_LOGIC_VECTOR (15 downto 0);
signal busIn_address_dut : STD_LOGIC_VECTOR (9 downto 0);
signal busIn_write_dut : STD_LOGIC_VECTOR (0 downto 0);
signal xOut_v_dut : STD_LOGIC_VECTOR (0 downto 0);
signal xOut_c_dut : STD_LOGIC_VECTOR (7 downto 0);
signal xOut_0_dut : STD_LOGIC_VECTOR (31 downto 0);
signal xOut_1_dut : STD_LOGIC_VECTOR (31 downto 0);
signal xOut_2_dut : STD_LOGIC_VECTOR (31 downto 0);
signal xOut_3_dut : STD_LOGIC_VECTOR (31 downto 0);
        signal clk : std_logic;
        signal areset : std_logic;
        signal h_areset : std_logic;

begin

-- Channelized data in real output
checkxIn : process (clk, areset, xIn_0_dut, xIn_0_stm, xIn_1_dut, xIn_1_stm, bankIn_0_dut, bankIn_0_stm, bankIn_1_dut, bankIn_1_stm)
begin
END PROCESS;


-- Channelized data out check
checkxOut : process (clk, areset, xOut_0_dut, xOut_0_stm, xOut_1_dut, xOut_1_stm, xOut_2_dut, xOut_2_stm, xOut_3_dut, xOut_3_stm)
variable mismatch_xOut_v : BOOLEAN := FALSE;
variable mismatch_xOut_c : BOOLEAN := FALSE;
variable mismatch_xOut_0 : BOOLEAN := FALSE;
variable mismatch_xOut_1 : BOOLEAN := FALSE;
variable mismatch_xOut_2 : BOOLEAN := FALSE;
variable mismatch_xOut_3 : BOOLEAN := FALSE;
variable ok : BOOLEAN := TRUE;
begin
    IF ((areset = '1')) THEN
        -- do nothing during reset
    ELSIF (clk'EVENT AND clk = '0') THEN -- falling clock edge to avoid transitions
        ok := TRUE;
        mismatch_xOut_v := FALSE;
        mismatch_xOut_c := FALSE;
        mismatch_xOut_0 := FALSE;
        mismatch_xOut_1 := FALSE;
        mismatch_xOut_2 := FALSE;
        mismatch_xOut_3 := FALSE;
        IF ( (xOut_v_dut /= xOut_v_stm)) THEN
            mismatch_xOut_v := TRUE;
            report "mismatch in xOut_v signal" severity Failure;
        END IF;
        IF (xOut_v_dut = "1") THEN
            IF ( (xOut_c_dut /= xOut_c_stm)) THEN
                mismatch_xOut_c := TRUE;
                report "mismatch in xOut_c signal" severity Warning;
            END IF;
            IF ( (xOut_0_dut /= xOut_0_stm)) THEN
                mismatch_xOut_0 := TRUE;
                report "mismatch in xOut_0 signal" severity Warning;
            END IF;
            IF ( (xOut_1_dut /= xOut_1_stm)) THEN
                mismatch_xOut_1 := TRUE;
                report "mismatch in xOut_1 signal" severity Warning;
            END IF;
            IF ( (xOut_2_dut /= xOut_2_stm)) THEN
                mismatch_xOut_2 := TRUE;
                report "mismatch in xOut_2 signal" severity Warning;
            END IF;
            IF ( (xOut_3_dut /= xOut_3_stm)) THEN
                mismatch_xOut_3 := TRUE;
                report "mismatch in xOut_3 signal" severity Warning;
            END IF;
        END IF;
        IF (mismatch_xOut_v = TRUE or mismatch_xOut_c = TRUE or mismatch_xOut_0 = TRUE or mismatch_xOut_1 = TRUE or mismatch_xOut_2 = TRUE or mismatch_xOut_3 = TRUE) THEN
            ok := FALSE;
        END IF;
        IF (ok = FALSE) THEN
            report "Mismatch detected" severity Failure;
        END IF;
    END IF;
END PROCESS;


dut : nmwtest_dut_filter1 port map (
    xIn_v_stm,
    xIn_c_stm,
    xIn_0_stm,
    xIn_1_stm,
    bankIn_0_stm,
    bankIn_1_stm,
    busIn_writedata_stm,
    busIn_address_stm,
    busIn_write_stm,
    xOut_v_dut,
    xOut_c_dut,
    xOut_0_dut,
    xOut_1_dut,
    xOut_2_dut,
    xOut_3_dut,
        clk,
        areset,
        h_areset
);

sim : nmwtest_dut_filter1_stm port map (
    xIn_v_stm,
    xIn_c_stm,
    xIn_0_stm,
    xIn_1_stm,
    bankIn_0_stm,
    bankIn_1_stm,
    busIn_writedata_stm,
    busIn_address_stm,
    busIn_write_stm,
    xOut_v_stm,
    xOut_c_stm,
    xOut_0_stm,
    xOut_1_stm,
    xOut_2_stm,
    xOut_3_stm,
        clk,
        areset,
        h_areset
);

end normal;
