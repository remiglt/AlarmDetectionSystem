--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:28:57 03/29/2021
-- Design Name:   
-- Module Name:   D:/Utilisateurs/DITN/Projets/Alarme/ise147/test1.vhd
-- Project Name:  Alarme
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: seq
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test1 IS
END test1;
 
ARCHITECTURE behavior OF test1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT seq
    PORT(
         CLK : IN  std_logic;
         btn1 : IN  std_logic;
         btn2 : IN  std_logic;
         btn3 : IN  std_logic;
         btn4 : IN  std_logic;
         Sel : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal btn1 : std_logic := '0';
   signal btn2 : std_logic := '0';
   signal btn3 : std_logic := '0';
   signal btn4 : std_logic := '0';

 	--Outputs
   signal Sel : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: seq PORT MAP (
          CLK => CLK,
          btn1 => btn1,
          btn2 => btn2,
          btn3 => btn3,
          btn4 => btn4,
          Sel => Sel
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 30 ns;	
		btn1 <= '1';
		wait for 30 ns;
		btn1 <= '0';
		wait for 30 ns;
		btn2 <= '1';
		wait for 30 ns;
		btn2 <= '0';
		wait for 30 ns;
		btn3 <= '1';
		wait for 30 ns;
		btn3 <= '0';
		wait for 30 ns;
		btn4 <= '1';
		wait for 30 ns;
		btn4 <= '0';
		wait for 30 ns;
		btn1 <= '1';
		wait for 30 ns;
		btn1 <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
