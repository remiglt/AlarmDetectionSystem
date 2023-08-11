--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:11:34 03/29/2021
-- Design Name:   
-- Module Name:   D:/Utilisateurs/DITN/Projets/Alarme/ise147/test_demux.vhd
-- Project Name:  Alarme
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DeMux
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
 
ENTITY test_demux IS
END test_demux;
 
ARCHITECTURE behavior OF test_demux IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DeMux
    PORT(
         E : IN  std_logic_vector(3 downto 0);
         Sel : IN  std_logic_vector(1 downto 0);
         A : OUT  std_logic_vector(3 downto 0);
         B : OUT  std_logic_vector(3 downto 0);
         C : OUT  std_logic_vector(3 downto 0);
         D : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal E : std_logic_vector(3 downto 0) := (others => '0');
   signal Sel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal A : std_logic_vector(3 downto 0);
   signal B : std_logic_vector(3 downto 0);
   signal C : std_logic_vector(3 downto 0);
   signal D : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DeMux PORT MAP (
          E => E,
          Sel => Sel,
          A => A,
          B => B,
          C => C,
          D => D
        );

   -- Stimulus process
   stim_proc: process
   begin		
      Sel <= "01";
		wait for 20ns;
		E <= "1000";
		wait for 20ns;
		E <= "0001";
		wait for 30ns;
		
		Sel <= "10";
		wait for 20ns;
		E <= "1000";
		wait for 20ns;
		E <= "0001";
		wait for 30ns;
		
		Sel <= "11";
		wait for 20ns;
		E <= "1000";
		wait for 20ns;
		E <= "0001";
		wait for 30ns;
		
		Sel <= "00";
		wait for 20ns;
		E <= "1000";
		wait for 20ns;
		E <= "0001";
		wait for 30ns;
		
		Sel <= "01";
		
      wait;
   end process;

END;
