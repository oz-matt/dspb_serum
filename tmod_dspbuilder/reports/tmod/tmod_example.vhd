library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
entity tmod_example is  
	port(
		aclr : in STD_LOGIC;
		HEX33 : out STD_LOGIC;
		Clock : in STD_LOGIC); 
end entity;
architecture rtl of tmod_example is
component tmod
	  
	port(
		aclr : in STD_LOGIC;
		HEX33 : out STD_LOGIC;
		Clock : in STD_LOGIC); 
end component;
begin
	tmod_instance : 
		component tmod
			port map(
				aclr => aclr,
				HEX33 => HEX33,
				Clock => Clock);
end architecture rtl;
