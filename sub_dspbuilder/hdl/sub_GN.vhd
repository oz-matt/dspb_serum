-- sub_GN.vhd

-- Generated using ACDS version 16.1 196

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sub_GN is
	port (
		Clock : in  std_logic := '0'; -- Clock.clk
		aclr  : in  std_logic := '0'; --      .reset_n
		HEX33 : out std_logic         -- HEX33.wire
	);
end entity sub_GN;

architecture rtl of sub_GN is
	component alt_dspbuilder_clock_GNF343OQUJ is
		port (
			aclr      : in  std_logic := 'X'; -- reset
			aclr_n    : in  std_logic := 'X'; -- reset_n
			aclr_out  : out std_logic;        -- reset
			clock     : in  std_logic := 'X'; -- clk
			clock_out : out std_logic         -- clk
		);
	end component alt_dspbuilder_clock_GNF343OQUJ;

	component alt_dspbuilder_vcc_GN is
		port (
			output : out std_logic   -- wire
		);
	end component alt_dspbuilder_vcc_GN;

	component alt_dspbuilder_port_GN37ALZBS4 is
		port (
			input  : in  std_logic := 'X'; -- wire
			output : out std_logic         -- wire
		);
	end component alt_dspbuilder_port_GN37ALZBS4;

	signal vcc_output_wire : std_logic; -- VCC:output -> HEX33_0:input

begin

	clock_0 : component alt_dspbuilder_clock_GNF343OQUJ
		port map (
			clock_out => open,  -- clock_output.clk
			aclr_out  => open,  --             .reset
			clock     => Clock, --        clock.clk
			aclr_n    => aclr   --             .reset_n
		);

	vcc : component alt_dspbuilder_vcc_GN
		port map (
			output => vcc_output_wire  -- output.wire
		);

	hex33_0 : component alt_dspbuilder_port_GN37ALZBS4
		port map (
			input  => vcc_output_wire, --  input.wire
			output => HEX33            -- output.wire
		);

end architecture rtl; -- of sub_GN
