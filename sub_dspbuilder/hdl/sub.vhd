-- This file is not intended for synthesis, is is present so that simulators
-- see a complete view of the system.

-- You may use the entity declaration from this file as the basis for a
-- component declaration in a VHDL file instantiating this entity.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity sub is
	port (
		Clock : in std_logic;
		HEX33 : out std_logic;
		aclr : in std_logic
	);
end entity sub;

architecture rtl of sub is

component sub_GN is
	port (
		Clock : in std_logic;
		HEX33 : out std_logic;
		aclr : in std_logic
	);
end component sub_GN;

begin

sub_GN_0: if true generate
	inst_sub_GN_0: sub_GN
		port map(Clock => Clock, HEX33 => HEX33, aclr => aclr);
end generate;

end architecture rtl;

