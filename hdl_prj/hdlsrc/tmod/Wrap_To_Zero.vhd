-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\tmod\Wrap_To_Zero.vhd
-- Created: 2020-03-17 21:18:51
-- 
-- Generated by MATLAB 9.4 and HDL Coder 3.12
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Wrap_To_Zero
-- Source Path: tmod/Counter Free-Running/Wrap To Zero
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Wrap_To_Zero IS
  PORT( U                                 :   IN    std_logic_vector(10 DOWNTO 0);  -- ufix11
        Y                                 :   OUT   std_logic_vector(10 DOWNTO 0)  -- ufix11
        );
END Wrap_To_Zero;


ARCHITECTURE rtl OF Wrap_To_Zero IS

BEGIN
  -- U(k)


  Y <= U;

END rtl;

