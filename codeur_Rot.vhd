----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:05:34 05/31/2021 
-- Design Name: 
-- Module Name:    codeur_Rot - Behavioral 
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

entity rotaryFSM is
    Port ( CLK : in  STD_LOGIC;
           rotatif_A : in  STD_LOGIC;
           rotatif_B : in  STD_LOGIC;
           rotEvent : out  STD_LOGIC;
           rotSens : out  STD_LOGIC);
end rotaryFSM;

architecture Behavioral of rotaryFSM is
type state is (rest, S1, S2, left, right, eventPending);
signal present, futur : state := rest;

begin

-- Partie REGISTRE
	process (CLK)
	begin
		if (CLK' event and CLK = '1') then 
		    present <= futur;
		end if;
	end process;

-- Partie COMBINATOIRE ETAT FUTUR
	process (present, rotatif_A, rotatif_B)
	begin
		case present is

			when rest =>
				if (rotatif_A = '0') then 
				    futur <= S1;
				elsif (rotatif_B = '0') then 
				    futur <= S2;
				else 
				    futur <= rest;
				end if;

			when S1 =>
				if (rotatif_B = '0') then 
				    futur <= left;
				elsif (rotatif_A = '1') then 
				    futur <= rest;
				else 
				    futur <= S1;
				end if;

			when left =>
				    futur <= eventPending;

			when S2 =>
				if (rotatif_A = '0') then 
				    futur <= right;
				elsif (rotatif_B = '1') then 
				    futur <= rest;
				else 
				    futur <= S2;
				end if;

			when right =>
				    futur <= eventPending;

			when eventPending =>
				if (rotatif_A = '1' and rotatif_B = '1') then 
				    futur <= rest;
				else 
				    futur <= eventPending;
				end if;

			when others =>
				    futur <= rest;
		end case;
	end process;

-- Partie COMBINATOIRE SORTIES
	rotEvent <=	'1' when (present = left) or (present = right) else 
					'0';
	rotSens <= 	'1' when (present = right) else 			-- leftRight
					'0';

end Behavioral;
