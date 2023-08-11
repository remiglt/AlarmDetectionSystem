----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:35:14 05/17/2021 
-- Design Name: 
-- Module Name:    Mux2v1 - Behavioral 
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

entity MUX2v1 is
    Port (
			  FSK1 : in  STD_LOGIC;
           FSK2 : in  STD_LOGIC;
           SEL : in  STD_LOGIC;
           F : out  STD_LOGIC);
end MUX2v1;

architecture Behavioral of MUX2v1 is
 --signal S:STD_LOGIC_VECTOR (1 downto 0);
begin
	F <= FSK1 when (SEL = '0') else
		  FSK2;
    
end Behavioral;

