----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:32:16 03/15/2021 
-- Design Name: 
-- Module Name:    button - Behavioral 
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

entity seq is
    Port ( CLK : in STD_LOGIC;
			  ETAT : in  STD_LOGIC_VECTOR (2 downto 0);
           Sel : out  STD_LOGIC_VECTOR (1 downto 0);
			  INIT : out STD_LOGIC;
			  ENABLE1 : out STD_LOGIC;
			  ENABLE2 : out STD_LOGIC;
			  ENABLE3 : out STD_LOGIC;
			  ENABLE4 : out STD_LOGIC);
end seq;

architecture Behavioral of seq is
type liste_etat is (ETAT0,ETAT1,ETAT2,ETAT3,ETAT4,ETAT5);
signal ETAT_PR,ETAT_FU:liste_etat:=ETAT1;

begin
	process(CLK)begin
		if rising_edge(CLK) then
			ETAT_PR <= ETAT_FU;
      end if;
	end process;
	
process (ETAT_PR, ETAT) begin
		case ETAT_PR is
			when ETAT0 =>
				if ETAT="000" then
					ETAT_FU <= ETAT1;
				else
					ETAT_FU <= ETAT0;
				end if;
			when ETAT1 =>
				if ETAT="001" then
					ETAT_FU <= ETAT2;
				else if ETAT="011" then
					     ETAT_FU <= ETAT4;
					  else
					     ETAT_FU <= ETAT1;
					  end if;
				end if;
			when ETAT2 =>
			   if ETAT="010" then
				   ETAT_FU <= ETAT3;
				else if ETAT="011" then
						  ETAT_FU <= ETAT4;
					  else
						  ETAT_FU <= ETAT2;
					  end if;
				end if;
			when ETAT3 =>
			   if ETAT="111" then
					ETAT_FU <= ETAT0;
				else if ETAT="011" then
						  ETAT_FU <= ETAT4;
					  else
						  ETAT_FU <= ETAT3;
					  end if;
				end if;
			when ETAT4 =>
			   if ETAT="000" then
					   ETAT_FU <= ETAT1;
				else if ETAT="100" then
						  ETAT_FU <= ETAT5;
					  else 
						  ETAT_FU <= ETAT4;
					  end if;
				end if;
			when ETAT5 =>
			   if ETAT="111" then
					ETAT_FU <= ETAT0;
				else 
					ETAT_FU <= ETAT5;
				end if;
			when others =>
				ETAT_FU <= ETAT0; -- ? ne pas oublier
		end case;
	end process;
	
Sel <= "00" when (ETAT_PR=ETAT0 or ETAT_PR=ETAT1 or ETAT_PR=ETAT5) else
		 "01" when ETAT_PR=ETAT2 else
		 "10" when ETAT_PR=ETAT3 else
		 "11";
		 
ENABLE1 <= '0' when (ETAT_PR=ETAT0 or ETAT_PR=ETAT1 or ETAT_PR=ETAT5) else '1';
ENABLE2 <= '0' when ETAT_PR=ETAT2 else '1';
ENABLE3 <= '0' when ETAT_PR=ETAT3 else '1';
ENABLE4 <= '0' when ETAT_PR=ETAT4 else '1';

INIT <= '1' when ETAT_PR=ETAT0 else '0';

end Behavioral;

