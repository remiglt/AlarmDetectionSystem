----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:10:09 03/22/2021 
-- Design Name: 
-- Module Name:    CodeNoir - Behavioral 
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

entity CodeNoir is
    Port ( CLK : in STD_LOGIC;
			  E : in  STD_LOGIC_VECTOR (3 downto 0);
           S : out  STD_LOGIC_VECTOR (3 downto 0);
			  ST : out STD_LOGIC);
end CodeNoir;


architecture Behavioral of CodeNoir is
    constant n_div : integer := 6400000;
    signal Q: integer range 0 to n_div := 0;
	 signal A: integer range 0 to 1 :=0;
begin

    process(CLK)begin
        if rising_edge(CLK)then
            if(Q = n_div-1)then
                Q <= 0;
            else
                Q <= Q+1;
            end if;
				if (Q<(n_div-1)/2) then
					A<=0;
				else 
					A<=1;
				end if;
        end if;
    end process;
	 
ST <= '0' when A=0 else '1';
S <= E;

end Behavioral;

