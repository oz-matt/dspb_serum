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
--use work.dspba_sim_library_package.all;
entity nmwtest_dut_atb is
end;

architecture normal of nmwtest_dut_atb is

component nmwtest_dut is
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
end component;

component nmwtest_dut_stm is
    port (
        d_0_stm : out std_logic_vector(13 downto 0);
        d_1_stm : out std_logic_vector(13 downto 0);
        v_s_stm : out std_logic_vector(0 downto 0);
        c_s_stm : out std_logic_vector(7 downto 0);
        b_0_stm : out std_logic_vector(0 downto 0);
        b_1_stm : out std_logic_vector(0 downto 0);
        dout_0_stm : out std_logic_vector(13 downto 0);
        dout_1_stm : out std_logic_vector(13 downto 0);
        dout_2_stm : out std_logic_vector(13 downto 0);
        dout_3_stm : out std_logic_vector(13 downto 0);
        vout_s_stm : out std_logic_vector(0 downto 0);
        cout_s_stm : out std_logic_vector(7 downto 0);
        busIn_writedata_stm : out std_logic_vector(15 downto 0);
        busIn_address_stm : out std_logic_vector(9 downto 0);
        busIn_write_stm : out std_logic_vector(0 downto 0);
        clk : out std_logic;
        areset : out std_logic;
        h_areset : out std_logic
    );
end component;

signal d_0_stm : STD_LOGIC_VECTOR (13 downto 0);
signal d_1_stm : STD_LOGIC_VECTOR (13 downto 0);
signal v_s_stm : STD_LOGIC_VECTOR (0 downto 0);
signal c_s_stm : STD_LOGIC_VECTOR (7 downto 0);
signal b_0_stm : STD_LOGIC_VECTOR (0 downto 0);
signal b_1_stm : STD_LOGIC_VECTOR (0 downto 0);
signal dout_0_stm : STD_LOGIC_VECTOR (13 downto 0);
signal dout_1_stm : STD_LOGIC_VECTOR (13 downto 0);
signal dout_2_stm : STD_LOGIC_VECTOR (13 downto 0);
signal dout_3_stm : STD_LOGIC_VECTOR (13 downto 0);
signal vout_s_stm : STD_LOGIC_VECTOR (0 downto 0);
signal cout_s_stm : STD_LOGIC_VECTOR (7 downto 0);
signal busIn_writedata_stm : STD_LOGIC_VECTOR (15 downto 0);
signal busIn_address_stm : STD_LOGIC_VECTOR (9 downto 0);
signal busIn_write_stm : STD_LOGIC_VECTOR (0 downto 0);
signal d_0_dut : STD_LOGIC_VECTOR (13 downto 0);
signal d_1_dut : STD_LOGIC_VECTOR (13 downto 0);
signal v_s_dut : STD_LOGIC_VECTOR (0 downto 0);
signal c_s_dut : STD_LOGIC_VECTOR (7 downto 0);
signal b_0_dut : STD_LOGIC_VECTOR (0 downto 0);
signal b_1_dut : STD_LOGIC_VECTOR (0 downto 0);
signal dout_0_dut : STD_LOGIC_VECTOR (13 downto 0);
signal dout_1_dut : STD_LOGIC_VECTOR (13 downto 0);
signal dout_2_dut : STD_LOGIC_VECTOR (13 downto 0);
signal dout_3_dut : STD_LOGIC_VECTOR (13 downto 0);
signal vout_s_dut : STD_LOGIC_VECTOR (0 downto 0);
signal cout_s_dut : STD_LOGIC_VECTOR (7 downto 0);
signal busIn_writedata_dut : STD_LOGIC_VECTOR (15 downto 0);
signal busIn_address_dut : STD_LOGIC_VECTOR (9 downto 0);
signal busIn_write_dut : STD_LOGIC_VECTOR (0 downto 0);
        signal clk : std_logic;
        signal areset : std_logic;
        signal h_areset : std_logic;

begin

-- General Purpose data in real output
checkd_0 : process (clk, areset, d_0_dut, d_0_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkd_1 : process (clk, areset, d_1_dut, d_1_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkv_s : process (clk, areset, v_s_dut, v_s_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkc_s : process (clk, areset, c_s_dut, c_s_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkb_0 : process (clk, areset, b_0_dut, b_0_stm)
begin
END PROCESS;


-- General Purpose data in real output
checkb_1 : process (clk, areset, b_1_dut, b_1_stm)
begin
END PROCESS;


-- General Purpose data out check
checkdout_0 : process (clk, areset)
variable mismatch_dout_0 : BOOLEAN := FALSE;
variable ok : BOOLEAN := TRUE;
begin
    IF (areset = '1') THEN
        -- do nothing during reset
    ELSIF (clk'EVENT AND clk = '0') THEN -- falling clock edge to avoid transitions
        ok := TRUE;
        mismatch_dout_0 := FALSE;
        IF ( (dout_0_dut /= dout_0_stm) and vout_s_dut = "1") THEN
            mismatch_dout_0 := TRUE;
            report "Mismatch on device output pin dout_0" severity Warning;
        END IF;
        IF (mismatch_dout_0) THEN
            ok := FALSE;
        END IF;
        assert (ok)
        report "mismatch in device level signal." severity Failure;
    END IF;
END PROCESS;


-- General Purpose data out check
checkdout_1 : process (clk, areset)
variable mismatch_dout_1 : BOOLEAN := FALSE;
variable ok : BOOLEAN := TRUE;
begin
    IF (areset = '1') THEN
        -- do nothing during reset
    ELSIF (clk'EVENT AND clk = '0') THEN -- falling clock edge to avoid transitions
        ok := TRUE;
        mismatch_dout_1 := FALSE;
        IF ( (dout_1_dut /= dout_1_stm) and vout_s_dut = "1") THEN
            mismatch_dout_1 := TRUE;
            report "Mismatch on device output pin dout_1" severity Warning;
        END IF;
        IF (mismatch_dout_1) THEN
            ok := FALSE;
        END IF;
        assert (ok)
        report "mismatch in device level signal." severity Failure;
    END IF;
END PROCESS;


-- General Purpose data out check
checkdout_2 : process (clk, areset)
variable mismatch_dout_2 : BOOLEAN := FALSE;
variable ok : BOOLEAN := TRUE;
begin
    IF (areset = '1') THEN
        -- do nothing during reset
    ELSIF (clk'EVENT AND clk = '0') THEN -- falling clock edge to avoid transitions
        ok := TRUE;
        mismatch_dout_2 := FALSE;
        IF ( (dout_2_dut /= dout_2_stm) and vout_s_dut = "1") THEN
            mismatch_dout_2 := TRUE;
            report "Mismatch on device output pin dout_2" severity Warning;
        END IF;
        IF (mismatch_dout_2) THEN
            ok := FALSE;
        END IF;
        assert (ok)
        report "mismatch in device level signal." severity Failure;
    END IF;
END PROCESS;


-- General Purpose data out check
checkdout_3 : process (clk, areset)
variable mismatch_dout_3 : BOOLEAN := FALSE;
variable ok : BOOLEAN := TRUE;
begin
    IF (areset = '1') THEN
        -- do nothing during reset
    ELSIF (clk'EVENT AND clk = '0') THEN -- falling clock edge to avoid transitions
        ok := TRUE;
        mismatch_dout_3 := FALSE;
        IF ( (dout_3_dut /= dout_3_stm) and vout_s_dut = "1") THEN
            mismatch_dout_3 := TRUE;
            report "Mismatch on device output pin dout_3" severity Warning;
        END IF;
        IF (mismatch_dout_3) THEN
            ok := FALSE;
        END IF;
        assert (ok)
        report "mismatch in device level signal." severity Failure;
    END IF;
END PROCESS;


-- General Purpose data out check
checkvout_s : process (clk, areset)
variable mismatch_vout_s : BOOLEAN := FALSE;
variable ok : BOOLEAN := TRUE;
begin
    IF (areset = '1') THEN
        -- do nothing during reset
    ELSIF (clk'EVENT AND clk = '0') THEN -- falling clock edge to avoid transitions
        ok := TRUE;
        mismatch_vout_s := FALSE;
        IF ( (vout_s_dut /= vout_s_stm)) THEN
            mismatch_vout_s := TRUE;
            report "Mismatch on device output pin vout_s" severity Warning;
        END IF;
        IF (mismatch_vout_s) THEN
            ok := FALSE;
        END IF;
        assert (ok)
        report "mismatch in device level signal." severity Failure;
    END IF;
END PROCESS;


-- General Purpose data out check
checkcout_s : process (clk, areset)
variable mismatch_cout_s : BOOLEAN := FALSE;
variable ok : BOOLEAN := TRUE;
begin
    IF (areset = '1') THEN
        -- do nothing during reset
    ELSIF (clk'EVENT AND clk = '0') THEN -- falling clock edge to avoid transitions
        ok := TRUE;
        mismatch_cout_s := FALSE;
        IF ( (cout_s_dut /= cout_s_stm) and vout_s_dut = "1") THEN
            mismatch_cout_s := TRUE;
            report "Mismatch on device output pin cout_s" severity Warning;
        END IF;
        IF (mismatch_cout_s) THEN
            ok := FALSE;
        END IF;
        assert (ok)
        report "mismatch in device level signal." severity Failure;
    END IF;
END PROCESS;


dut : nmwtest_dut port map (
    d_0_stm,
    d_1_stm,
    v_s_stm,
    c_s_stm,
    b_0_stm,
    b_1_stm,
    dout_0_dut,
    dout_1_dut,
    dout_2_dut,
    dout_3_dut,
    vout_s_dut,
    cout_s_dut,
    busIn_writedata_stm,
    busIn_address_stm,
    busIn_write_stm,
        clk,
        areset,
        h_areset
);

sim : nmwtest_dut_stm port map (
    d_0_stm,
    d_1_stm,
    v_s_stm,
    c_s_stm,
    b_0_stm,
    b_1_stm,
    dout_0_stm,
    dout_1_stm,
    dout_2_stm,
    dout_3_stm,
    vout_s_stm,
    cout_s_stm,
    busIn_writedata_stm,
    busIn_address_stm,
    busIn_write_stm,
        clk,
        areset,
        h_areset
);

end normal;
