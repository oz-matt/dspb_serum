-- This file is not intended for synthesis, is is present so that simulators
-- see a complete view of the system.

-- You may use the entity declaration from this file as the basis for a
-- component declaration in a VHDL file instantiating this entity.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity alt_dspbuilder_clock is
	generic (
		DOMAIN : string := "default";
		RESET : string := "ACTIVE_HIGH"
	);
	port (
		aclr : in std_logic := '0';
		clock_out : out std_logic;
		clock : in std_logic := '0';
		aclr_n : in std_logic := '0';
		aclr_out : out std_logic
	);
end entity alt_dspbuilder_clock;

architecture rtl of alt_dspbuilder_clock is

component alt_dspbuilder_clock_GNF343OQUJ is
	generic (
		DOMAIN : string := "default";
		RESET : string := "ACTIVE_LOW"
	);
	port (
		aclr_n : in std_logic := '0';
		aclr_out : out std_logic;
		clock : in std_logic := '0';
		clock_out : out std_logic
	);
end component alt_dspbuilder_clock_GNF343OQUJ;

begin

alt_dspbuilder_clock_GNF343OQUJ_0: if ((DOMAIN = "default") and (RESET = "ACTIVE_LOW")) generate
	inst_alt_dspbuilder_clock_GNF343OQUJ_0: alt_dspbuilder_clock_GNF343OQUJ
		generic map(DOMAIN => "default", RESET => "ACTIVE_LOW")
		port map(aclr_n => aclr_n, aclr_out => aclr_out, clock => clock, clock_out => clock_out);
end generate;

assert not (((DOMAIN = "default") and (RESET = "ACTIVE_LOW")))
	report "Please run generate again" severity error;

end architecture rtl;

