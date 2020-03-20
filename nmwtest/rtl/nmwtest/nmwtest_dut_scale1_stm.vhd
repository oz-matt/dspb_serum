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
-- VHDL created on Mon Mar 16 22:23:13 2020


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use std.TextIO.all;
USE work.nmwtest_dut_safe_path.all;

entity nmwtest_dut_scale1_stm is
    port (
        xIn_v_stm : out std_logic_vector(0 downto 0);
        xIn_c_stm : out std_logic_vector(7 downto 0);
        xIn_0_stm : out std_logic_vector(31 downto 0);
        xIn_1_stm : out std_logic_vector(31 downto 0);
        xIn_2_stm : out std_logic_vector(31 downto 0);
        xIn_3_stm : out std_logic_vector(31 downto 0);
        gain_i_stm : out std_logic_vector(0 downto 0);
        qOut_v_stm : out std_logic_vector(0 downto 0);
        qOut_c_stm : out std_logic_vector(7 downto 0);
        qOut_0_stm : out std_logic_vector(13 downto 0);
        qOut_1_stm : out std_logic_vector(13 downto 0);
        qOut_2_stm : out std_logic_vector(13 downto 0);
        qOut_3_stm : out std_logic_vector(13 downto 0);
        eOut_0_stm : out std_logic_vector(0 downto 0);
        eOut_1_stm : out std_logic_vector(0 downto 0);
        eOut_2_stm : out std_logic_vector(0 downto 0);
        eOut_3_stm : out std_logic_vector(0 downto 0);
        clk : out std_logic;
        areset : out std_logic
    );
end nmwtest_dut_scale1_stm;

architecture normal of nmwtest_dut_scale1_stm is

    signal clk_stm_sig : std_logic := '0';
    signal clk_stm_sig_stop : std_logic := '0';
    signal areset_stm_sig : std_logic := '1';
    signal clk_xIn_stm_sig_stop : std_logic := '0';
    signal clk_qOut_stm_sig_stop : std_logic := '0';

    function str_to_stdvec(inp: string) return std_logic_vector is
        variable temp: std_logic_vector(inp'range) := (others => 'X');
    begin
        for i in inp'range loop
            IF ((inp(i) = '1')) THEN
                temp(i) := '1';
            elsif (inp(i) = '0') then
                temp(i) := '0';
            END IF;
            end loop;
            return temp;
        end function str_to_stdvec;
        

    begin

    clk <= clk_stm_sig;
    clk_process: process 
    begin
        wait for 200 ps;
        clk_stm_sig <= not clk_stm_sig;
        wait for 7800 ps;
        if (clk_stm_sig_stop = '1') then
            assert (false)
            report "Arrived at end of stimulus data on clk clk" severity NOTE;
            wait;
        end if;
        wait for 200 ps;
        clk_stm_sig <= not clk_stm_sig;
        wait for 7800 ps;
        if (clk_stm_sig_stop = '1') then
            assert (false)
            report "Arrived at end of stimulus data on clk clk" severity NOTE;
            wait;
        end if;
    end process;

    areset <= areset_stm_sig;
    areset_process: process begin
        areset_stm_sig <= '1';
        wait for 12000 ps;
        areset_stm_sig <= '0';
        wait;
    end process;

        -- Generating stimulus for xIn
        xIn_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_xIn : text open read_mode is safe_path("nmwtest/nmwtest_dut_scale1_xIn.stm");
            variable xIn_v_int_0 : Integer;
            variable xIn_v_temp : std_logic_vector(0 downto 0);
            variable xIn_c_int_0 : Integer;
            variable xIn_c_temp : std_logic_vector(7 downto 0);
            variable xIn_0_int_0 : Integer;
            variable xIn_0_temp : std_logic_vector(31 downto 0);
            variable xIn_1_int_0 : Integer;
            variable xIn_1_temp : std_logic_vector(31 downto 0);
            variable xIn_2_int_0 : Integer;
            variable xIn_2_temp : std_logic_vector(31 downto 0);
            variable xIn_3_int_0 : Integer;
            variable xIn_3_temp : std_logic_vector(31 downto 0);
            variable gain_i_int_0 : Integer;
            variable gain_i_temp : std_logic_vector(0 downto 0);

        begin
            -- initialize all outputs to 0
            xIn_v_stm <= (others => '0');
            xIn_c_stm <= (others => '0');
            xIn_0_stm <= (others => '0');
            xIn_1_stm <= (others => '0');
            xIn_2_stm <= (others => '0');
            xIn_3_stm <= (others => '0');
            gain_i_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                IF (endfile(data_file_xIn)) THEN
                    clk_xIn_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_xIn, L);
                    
                    read(L, xIn_v_int_0);
                    xIn_v_temp(0 downto 0) := std_logic_vector(to_unsigned(xIn_v_int_0, 1));
                    xIn_v_stm <= xIn_v_temp;
                    read(L, xIn_c_int_0);
                    xIn_c_temp(7 downto 0) := std_logic_vector(to_unsigned(xIn_c_int_0, 8));
                    xIn_c_stm <= xIn_c_temp;
                    read(L, xIn_0_int_0);
                    xIn_0_temp(31 downto 0) := std_logic_vector(to_signed(xIn_0_int_0, 32));
                    xIn_0_stm <= xIn_0_temp;
                    read(L, xIn_1_int_0);
                    xIn_1_temp(31 downto 0) := std_logic_vector(to_signed(xIn_1_int_0, 32));
                    xIn_1_stm <= xIn_1_temp;
                    read(L, xIn_2_int_0);
                    xIn_2_temp(31 downto 0) := std_logic_vector(to_signed(xIn_2_int_0, 32));
                    xIn_2_stm <= xIn_2_temp;
                    read(L, xIn_3_int_0);
                    xIn_3_temp(31 downto 0) := std_logic_vector(to_signed(xIn_3_int_0, 32));
                    xIn_3_stm <= xIn_3_temp;
                    read(L, gain_i_int_0);
                    gain_i_temp(0 downto 0) := std_logic_vector(to_unsigned(gain_i_int_0, 1));
                    gain_i_stm <= gain_i_temp;

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;
        -- Generating stimulus for qOut
        qOut_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_qOut : text open read_mode is safe_path("nmwtest/nmwtest_dut_scale1_qOut.stm");
            variable qOut_v_int_0 : Integer;
            variable qOut_v_temp : std_logic_vector(0 downto 0);
            variable qOut_c_int_0 : Integer;
            variable qOut_c_temp : std_logic_vector(7 downto 0);
            variable qOut_0_int_0 : Integer;
            variable qOut_0_temp : std_logic_vector(13 downto 0);
            variable qOut_1_int_0 : Integer;
            variable qOut_1_temp : std_logic_vector(13 downto 0);
            variable qOut_2_int_0 : Integer;
            variable qOut_2_temp : std_logic_vector(13 downto 0);
            variable qOut_3_int_0 : Integer;
            variable qOut_3_temp : std_logic_vector(13 downto 0);
            variable eOut_0_int_0 : Integer;
            variable eOut_0_temp : std_logic_vector(0 downto 0);
            variable eOut_1_int_0 : Integer;
            variable eOut_1_temp : std_logic_vector(0 downto 0);
            variable eOut_2_int_0 : Integer;
            variable eOut_2_temp : std_logic_vector(0 downto 0);
            variable eOut_3_int_0 : Integer;
            variable eOut_3_temp : std_logic_vector(0 downto 0);

        begin
            -- initialize all outputs to 0
            qOut_v_stm <= (others => '0');
            qOut_c_stm <= (others => '0');
            qOut_0_stm <= (others => '0');
            qOut_1_stm <= (others => '0');
            qOut_2_stm <= (others => '0');
            qOut_3_stm <= (others => '0');
            eOut_0_stm <= (others => '0');
            eOut_1_stm <= (others => '0');
            eOut_2_stm <= (others => '0');
            eOut_3_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                IF (endfile(data_file_qOut)) THEN
                    clk_qOut_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_qOut, L);
                    
                    read(L, qOut_v_int_0);
                    qOut_v_temp(0 downto 0) := std_logic_vector(to_unsigned(qOut_v_int_0, 1));
                    qOut_v_stm <= qOut_v_temp;
                    read(L, qOut_c_int_0);
                    qOut_c_temp(7 downto 0) := std_logic_vector(to_unsigned(qOut_c_int_0, 8));
                    qOut_c_stm <= qOut_c_temp;
                    read(L, qOut_0_int_0);
                    qOut_0_temp(13 downto 0) := std_logic_vector(to_unsigned(qOut_0_int_0, 14));
                    qOut_0_stm <= qOut_0_temp;
                    read(L, qOut_1_int_0);
                    qOut_1_temp(13 downto 0) := std_logic_vector(to_unsigned(qOut_1_int_0, 14));
                    qOut_1_stm <= qOut_1_temp;
                    read(L, qOut_2_int_0);
                    qOut_2_temp(13 downto 0) := std_logic_vector(to_unsigned(qOut_2_int_0, 14));
                    qOut_2_stm <= qOut_2_temp;
                    read(L, qOut_3_int_0);
                    qOut_3_temp(13 downto 0) := std_logic_vector(to_unsigned(qOut_3_int_0, 14));
                    qOut_3_stm <= qOut_3_temp;
                    read(L, eOut_0_int_0);
                    eOut_0_temp(0 downto 0) := std_logic_vector(to_unsigned(eOut_0_int_0, 1));
                    eOut_0_stm <= eOut_0_temp;
                    read(L, eOut_1_int_0);
                    eOut_1_temp(0 downto 0) := std_logic_vector(to_unsigned(eOut_1_int_0, 1));
                    eOut_1_stm <= eOut_1_temp;
                    read(L, eOut_2_int_0);
                    eOut_2_temp(0 downto 0) := std_logic_vector(to_unsigned(eOut_2_int_0, 1));
                    eOut_2_stm <= eOut_2_temp;
                    read(L, eOut_3_int_0);
                    eOut_3_temp(0 downto 0) := std_logic_vector(to_unsigned(eOut_3_int_0, 1));
                    eOut_3_stm <= eOut_3_temp;

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;

    clk_stm_sig_stop <= clk_xIn_stm_sig_stop OR clk_qOut_stm_sig_stop OR '0';


    END normal;
