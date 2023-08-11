----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:36:35 05/17/2021 
-- Design Name: 
-- Module Name:    Cmpt - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Cmpt is
    Port ( clk : in  STD_LOGIC;
           EN : in  STD_LOGIC;
			  CM1 : out  STD_LOGIC;
			  CM2 : out  STD_LOGIC;
			  CM3 : out STD_LOGIC);
end Cmpt; 

architecture Behavioral of Cmpt is
signal M: unsigned(24 downto 0):=(OTHERS=>'0');

begin
process(clk) 
	begin
	   if rising_edge(clk) then
	      if(EN = '1') then
            M <= M + 1;
         else
            M <= M;
         end if;
	   end if;
end process;

CM1 <= M(11);
CM2 <= M(12);
CM3 <= M(20);

end Behavioral;
