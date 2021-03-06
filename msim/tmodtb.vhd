library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity tmodtb is
end entity;

architecture behave of tmodtb is

signal fakeclock : std_logic := '0';
signal rst : std_logic := '0';
signal ce : std_logic := '1';

begin

tmod_inst : entity work.tmod 
port map 
(
  clk => fakeclock,
  reset => rst,
  clk_enable => ce
); 

fakeclock <= not fakeclock after 10 ns;

process is
begin

wait for 1 us;

end process;

end behave;