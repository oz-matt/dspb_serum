library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity tmodtb is
end entity;

architecture behave of tmodtb is

signal fakeclock : std_logic := '0';
signal rst : std_logic := '0';
signal ce : std_logic := '1';
signal triouwt : integer;
signal wout : std_logic_vector(15 DOWNTO 0);

begin

tmod_inst : entity work.trigen 
port map 
(
  clock => fakeclock,
  triout => triouwt
); 

fakeclock <= not fakeclock after 10 ns;

process is
begin

wait for 1 us;

end process;

end behave;