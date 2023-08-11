----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:22:23 03/22/2021 
-- Design Name: 
-- Module Name:    deverouille - Behavioral 
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

entity deverouille is
    Port ( clk : in  STD_LOGIC;
			  capteur : in  STD_LOGIC;
           code_correct : in  STD_LOGIC;
			  BP : in  STD_LOGIC;
			  ETATS : out  STD_LOGIC_VECTOR (2 downto 0);
			  S : out  STD_LOGIC_VECTOR (2 downto 0);
           alarme : out  STD_LOGIC;
			  voyant1 : out  STD_LOGIC;
           voyant2 : out  STD_LOGIC;
           voyant3 : out  STD_LOGIC);
end deverouille;

architecture Behavioral of deverouille is
	type etat is (ETAT0, ETAT1, ETAT2, ETAT3, ETAT4, ETAT5);
	signal futur, present: etat:=ETAT0;
	signal ETAT_sig : STD_LOGIC_VECTOR (2 downto 0);

begin
process (clk) begin
		if(rising_edge(clk))then
			present <= futur;
		end if;
end process;

process(present, capteur, code_correct, BP) 
begin
	case present is
		when ETAT0 =>
			if(capteur='1')then
				futur <= ETAT1;
			else
				futur <= ETAT0;
			end if;
		when ETAT1 =>
			if(BP='1')then
				if(code_correct='1')then
					futur <= ETAT2;
				else
					futur <= ETAT4;
				end if;
				else
					futur <= ETAT1;
			end if;
		when ETAT2 =>
			if(BP='1')then
				if(code_correct='1')then
					futur <= ETAT3;
				else
					futur <= ETAT4;
				end if;
				else
					futur <= ETAT2;
			end if;
		when ETAT3 =>
			if(BP='1')then
				if(code_correct='1')then
					futur <= ETAT0;
				else
					futur <= ETAT4;
				end if;
				else
					futur <= ETAT3;
			end if;
		when ETAT4 =>
			if(BP='1')then
				if(code_correct='1')then
					futur <= ETAT1;
				else
					futur <= ETAT5;
				end if;
				else
					futur <= ETAT4;
			end if;
		when ETAT5 =>
			if(BP='1')then
				if(code_correct='1')then
					futur <= ETAT0;
				else
					futur <= ETAT5;
				end if;
				else
					futur <= ETAT5;
			end if;
	end case;
end process;

--definition des sorties
alarme <= '1' when ((present = ETAT1)or(present = ETAT2)or(present = ETAT3)or(present = ETAT4)or(present = ETAT5))
				  else '0';
voyant1 <= '1' when (present = ETAT0)
					else '0';
voyant2 <= '1' when (present = ETAT4)
					else '0';
voyant3 <= '1' when (present = ETAT5)
					else '0';
					
ETAT_sig <= 	"000" when (present = ETAT1) else
		"001" when (present = ETAT2) else
		"010" when (present = ETAT3) else
		"011" when (present = ETAT4) else
		"100" when (present = ETAT5) else
		"111";
	
ETATS <= ETAT_sig;
S <= ETAT_sig;

end Behavioral;

