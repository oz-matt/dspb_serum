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
use std.TextIO.all;
USE work.nmwtest_dut_safe_path.all;

entity nmwtest_dut_stm is
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
end nmwtest_dut_stm;

architecture normal of nmwtest_dut_stm is

    signal clk_stm_sig : std_logic := '0';
    signal clk_stm_sig_stop : std_logic := '0';
    signal areset_stm_sig : std_logic := '1';
    signal h_areset_stm_sig : std_logic := '1';
    signal clk_d_0_stm_sig_stop : std_logic := '0';
    signal clk_d_1_stm_sig_stop : std_logic := '0';
    signal clk_v_s_stm_sig_stop : std_logic := '0';
    signal clk_c_s_stm_sig_stop : std_logic := '0';
    signal clk_b_0_stm_sig_stop : std_logic := '0';
    signal clk_b_1_stm_sig_stop : std_logic := '0';
    signal clk_dout_0_stm_sig_stop : std_logic := '0';
    signal clk_dout_1_stm_sig_stop : std_logic := '0';
    signal clk_dout_2_stm_sig_stop : std_logic := '0';
    signal clk_dout_3_stm_sig_stop : std_logic := '0';
    signal clk_vout_s_stm_sig_stop : std_logic := '0';
    signal clk_cout_s_stm_sig_stop : std_logic := '0';

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

    h_areset <= h_areset_stm_sig;
    h_areset_process: process begin
        h_areset_stm_sig <= '1';
        wait for 12000 ps;
        h_areset_stm_sig <= '0';
        wait;
    end process;

        -- Generating stimulus for d_0
        d_0_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_xIn : text open read_mode is safe_path("nmwtest/nmwtest_dut_filter1_xIn.stm");
            variable xIn_0_int_0 : Integer;
            variable xIn_0_temp : std_logic_vector(13 downto 0);

        begin
            -- initialize all outputs to 0
            d_0_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                -- (ports connected to d_0)
                IF (endfile(data_file_xIn)) THEN
                    clk_d_0_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_xIn, L);
                    
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, xIn_0_int_0);
                    xIn_0_temp(13 downto 0) := std_logic_vector(to_unsigned(xIn_0_int_0, 14));
                    d_0_stm <= xIn_0_temp;
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;
        -- Generating stimulus for d_1
        d_1_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_xIn : text open read_mode is safe_path("nmwtest/nmwtest_dut_filter1_xIn.stm");
            variable xIn_1_int_0 : Integer;
            variable xIn_1_temp : std_logic_vector(13 downto 0);

        begin
            -- initialize all outputs to 0
            d_1_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                -- (ports connected to d_1)
                IF (endfile(data_file_xIn)) THEN
                    clk_d_1_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_xIn, L);
                    
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, xIn_1_int_0);
                    xIn_1_temp(13 downto 0) := std_logic_vector(to_unsigned(xIn_1_int_0, 14));
                    d_1_stm <= xIn_1_temp;
                    read(L, dummy_int);
                    read(L, dummy_int);

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;
        -- Generating stimulus for v_s
        v_s_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_xIn : text open read_mode is safe_path("nmwtest/nmwtest_dut_filter1_xIn.stm");
            variable xIn_v_int_0 : Integer;
            variable xIn_v_temp : std_logic_vector(0 downto 0);

        begin
            -- initialize all outputs to 0
            v_s_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                -- (ports connected to v_s)
                IF (endfile(data_file_xIn)) THEN
                    clk_v_s_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_xIn, L);
                    
                    read(L, xIn_v_int_0);
                    xIn_v_temp(0 downto 0) := std_logic_vector(to_unsigned(xIn_v_int_0, 1));
                    v_s_stm <= xIn_v_temp;
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;
        -- Generating stimulus for c_s
        c_s_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_xIn : text open read_mode is safe_path("nmwtest/nmwtest_dut_filter1_xIn.stm");
            variable xIn_c_int_0 : Integer;
            variable xIn_c_temp : std_logic_vector(7 downto 0);

        begin
            -- initialize all outputs to 0
            c_s_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                -- (ports connected to c_s)
                IF (endfile(data_file_xIn)) THEN
                    clk_c_s_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_xIn, L);
                    
                    read(L, dummy_int);
                    read(L, xIn_c_int_0);
                    xIn_c_temp(7 downto 0) := std_logic_vector(to_unsigned(xIn_c_int_0, 8));
                    c_s_stm <= xIn_c_temp;
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;
        -- Generating stimulus for b_0
        b_0_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_xIn : text open read_mode is safe_path("nmwtest/nmwtest_dut_filter1_xIn.stm");
            variable bankIn_0_int_0 : Integer;
            variable bankIn_0_temp : std_logic_vector(0 downto 0);

        begin
            -- initialize all outputs to 0
            b_0_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                -- (ports connected to b_0)
                IF (endfile(data_file_xIn)) THEN
                    clk_b_0_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_xIn, L);
                    
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, bankIn_0_int_0);
                    bankIn_0_temp(0 downto 0) := std_logic_vector(to_unsigned(bankIn_0_int_0, 1));
                    b_0_stm <= bankIn_0_temp;
                    read(L, dummy_int);

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;
        -- Generating stimulus for b_1
        b_1_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_xIn : text open read_mode is safe_path("nmwtest/nmwtest_dut_filter1_xIn.stm");
            variable bankIn_1_int_0 : Integer;
            variable bankIn_1_temp : std_logic_vector(0 downto 0);

        begin
            -- initialize all outputs to 0
            b_1_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                -- (ports connected to b_1)
                IF (endfile(data_file_xIn)) THEN
                    clk_b_1_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_xIn, L);
                    
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, bankIn_1_int_0);
                    bankIn_1_temp(0 downto 0) := std_logic_vector(to_unsigned(bankIn_1_int_0, 1));
                    b_1_stm <= bankIn_1_temp;

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;
        -- Generating stimulus for dout_0
        dout_0_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_qOut : text open read_mode is safe_path("nmwtest/nmwtest_dut_scale1_qOut.stm");
            variable qOut_0_int_0 : Integer;
            variable qOut_0_temp : std_logic_vector(13 downto 0);

        begin
            -- initialize all outputs to 0
            dout_0_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                -- (ports connected to dout_0)
                IF (endfile(data_file_qOut)) THEN
                    clk_dout_0_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_qOut, L);
                    
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, qOut_0_int_0);
                    qOut_0_temp(13 downto 0) := std_logic_vector(to_unsigned(qOut_0_int_0, 14));
                    dout_0_stm <= qOut_0_temp;
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;
        -- Generating stimulus for dout_1
        dout_1_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_qOut : text open read_mode is safe_path("nmwtest/nmwtest_dut_scale1_qOut.stm");
            variable qOut_1_int_0 : Integer;
            variable qOut_1_temp : std_logic_vector(13 downto 0);

        begin
            -- initialize all outputs to 0
            dout_1_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                -- (ports connected to dout_1)
                IF (endfile(data_file_qOut)) THEN
                    clk_dout_1_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_qOut, L);
                    
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, qOut_1_int_0);
                    qOut_1_temp(13 downto 0) := std_logic_vector(to_unsigned(qOut_1_int_0, 14));
                    dout_1_stm <= qOut_1_temp;
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;
        -- Generating stimulus for dout_2
        dout_2_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_qOut : text open read_mode is safe_path("nmwtest/nmwtest_dut_scale1_qOut.stm");
            variable qOut_2_int_0 : Integer;
            variable qOut_2_temp : std_logic_vector(13 downto 0);

        begin
            -- initialize all outputs to 0
            dout_2_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                -- (ports connected to dout_2)
                IF (endfile(data_file_qOut)) THEN
                    clk_dout_2_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_qOut, L);
                    
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, qOut_2_int_0);
                    qOut_2_temp(13 downto 0) := std_logic_vector(to_unsigned(qOut_2_int_0, 14));
                    dout_2_stm <= qOut_2_temp;
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;
        -- Generating stimulus for dout_3
        dout_3_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_qOut : text open read_mode is safe_path("nmwtest/nmwtest_dut_scale1_qOut.stm");
            variable qOut_3_int_0 : Integer;
            variable qOut_3_temp : std_logic_vector(13 downto 0);

        begin
            -- initialize all outputs to 0
            dout_3_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                -- (ports connected to dout_3)
                IF (endfile(data_file_qOut)) THEN
                    clk_dout_3_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_qOut, L);
                    
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, qOut_3_int_0);
                    qOut_3_temp(13 downto 0) := std_logic_vector(to_unsigned(qOut_3_int_0, 14));
                    dout_3_stm <= qOut_3_temp;
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;
        -- Generating stimulus for vout_s
        vout_s_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_qOut : text open read_mode is safe_path("nmwtest/nmwtest_dut_scale1_qOut.stm");
            variable qOut_v_int_0 : Integer;
            variable qOut_v_temp : std_logic_vector(0 downto 0);

        begin
            -- initialize all outputs to 0
            vout_s_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                -- (ports connected to vout_s)
                IF (endfile(data_file_qOut)) THEN
                    clk_vout_s_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_qOut, L);
                    
                    read(L, qOut_v_int_0);
                    qOut_v_temp(0 downto 0) := std_logic_vector(to_unsigned(qOut_v_int_0, 1));
                    vout_s_stm <= qOut_v_temp;
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;
        -- Generating stimulus for cout_s
        cout_s_stm_init_p: process

            variable L : line;
            variable dummy_int : Integer;
            file data_file_qOut : text open read_mode is safe_path("nmwtest/nmwtest_dut_scale1_qOut.stm");
            variable qOut_c_int_0 : Integer;
            variable qOut_c_temp : std_logic_vector(7 downto 0);

        begin
            -- initialize all outputs to 0
            cout_s_stm <= (others => '0');

            wait for 201 ps; -- wait delay
            
            while true loop
            
                -- (ports connected to cout_s)
                IF (endfile(data_file_qOut)) THEN
                    clk_cout_s_stm_sig_stop <= '1';
                    wait;
                ELSE
                    readline(data_file_qOut, L);
                    
                    read(L, dummy_int);
                    read(L, qOut_c_int_0);
                    qOut_c_temp(7 downto 0) := std_logic_vector(to_unsigned(qOut_c_int_0, 8));
                    cout_s_stm <= qOut_c_temp;
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);
                    read(L, dummy_int);

                    deallocate(L);
                END IF;
                -- -- wait for rising edge to pass (assert signals just after rising edge)
                wait until clk_stm_sig'EVENT and clk_stm_sig = '1';
                wait for 1 ps; -- wait delay
                
                end loop;
            wait;
        END PROCESS;
        -- Driving gnd for busIn signals

        busIn_writedata_stm <= (others => '0');
        busIn_address_stm <= (others => '0');
        busIn_write_stm <= (others => '0');

    clk_stm_sig_stop <= clk_d_0_stm_sig_stop OR clk_d_1_stm_sig_stop OR clk_v_s_stm_sig_stop OR clk_c_s_stm_sig_stop OR clk_b_0_stm_sig_stop OR clk_b_1_stm_sig_stop OR clk_dout_0_stm_sig_stop OR clk_dout_1_stm_sig_stop OR clk_dout_2_stm_sig_stop OR clk_dout_3_stm_sig_stop OR clk_vout_s_stm_sig_stop OR clk_cout_s_stm_sig_stop OR '0';


    END normal;
