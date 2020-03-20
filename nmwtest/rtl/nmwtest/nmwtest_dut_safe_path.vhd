-- safe_path for nmwtest_dut given rtl dir is ./rtl (quartus)
LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE nmwtest_dut_safe_path is
	FUNCTION safe_path( path: string ) RETURN string;
END nmwtest_dut_safe_path;

PACKAGE body nmwtest_dut_safe_path IS
	FUNCTION safe_path( path: string )
		RETURN string IS
	BEGIN
		return string'("./rtl/") & path;
	END FUNCTION safe_path;
END nmwtest_dut_safe_path;
