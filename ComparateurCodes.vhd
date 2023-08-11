----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:54:06 04/26/2021 
-- Design Name: 
-- Module Name:    ComparateurCodes - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ComparateurCodes is
    Port ( Switchs : in  STD_LOGIC_VECTOR (3 downto 0);
			  S : in  STD_LOGIC_VECTOR (2 downto 0);
           code_correct : out  STD_LOGIC);
end ComparateurCodes;

architecture Behavioral of ComparateurCodes is

constant code1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
constant code2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
constant code3 : STD_LOGIC_VECTOR (3 downto 0) := "0011";
constant code4 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
constant code5 : STD_LOGIC_VECTOR (3 downto 0) := "0101";

signal code : STD_LOGIC_VECTOR (3 downto 0) :=  "0000";

begin

code <= code1 when S="000" else
		  code2 when S="001" else
		  code3 when S="010" else
		  code4 when S="011" else
		  code5;

code_correct <= '1' when (Switchs = code) else
                '0';  

end Behavioral;

