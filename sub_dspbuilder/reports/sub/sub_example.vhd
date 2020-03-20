library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
entity sub_example is  
	port(
		aclr : in STD_LOGIC;
		Clock : in STD_LOGIC;
		HEX33 : out STD_LOGIC); 
end entity;
architecture rtl of sub_example is
component sub
	  
	port(
		aclr : in STD_LOGIC;
		Clock : in STD_LOGIC;
		HEX33 : out STD_LOGIC); 
end component;
begin
	sub_instance : 
		component sub
			port map(
				aclr => aclr,
				Clock => Clock,
				HEX33 => HEX33);
end architecture rtl;
