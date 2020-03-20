library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity trigen is
  port (
    clock : in std_logic; -- Assuming 50mhz operation
	triout : out integer
  );
end entity;

architecture rtl of trigen is
  signal s_triout :  integer range 0 to 8191 := 0;
  signal clkctr : integer range 0 to 100 := 0;
begin
  trimachine : process(clock) is
  begin
  if rising_edge(clock) then
    -- if we want 500khz out, then every 100 clks we must complete a period

	if clkctr < 50 then
      s_triout <= s_triout + 163;
	  clkctr <= clkctr + 1;
    elsif clkctr < 99 then
      s_triout <= s_triout - 163;
	  clkctr <= clkctr + 1;
	else
	  s_triout <= 0;
	  clkctr <= 0;
    end if;
	
  end if;
  end process trimachine;
  
  triout <= s_triout;
  
end rtl;