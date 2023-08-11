----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:21:34 05/10/2021 
-- Design Name: 
-- Module Name:    Enregistre0 - Behavioral 
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

entity enregistre0 is
    Port ( CLK : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (3 downto 0);
			  EN : in STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0);
			  ST : out STD_LOGIC);
end enregistre0;

architecture Behavioral of enregistre0 is
    signal M: STD_LOGIC_VECTOR(3 downto 0):=(OTHERS => '0');

begin
	process(clk)begin
		if rising_edge(clk)then
			if(EN='0')then
				M <= D;
			else
				M <= M;
			end if;
			Q <= M;
		end if;
	end process;

ST <= '0';
	
end Behavioral;


