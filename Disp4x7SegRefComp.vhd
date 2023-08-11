----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:25:47 11/07/2011 
-- Design Name: 
-- Module Name:    Disp4x7SegRefComp - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Disp4x7SegRefComp is
    Port ( 	CLK : in std_logic;
				DataA : in  STD_LOGIC_VECTOR (3 downto 0);
			   DataB : in  STD_LOGIC_VECTOR (3 downto 0);
				DataC : in  STD_LOGIC_VECTOR (3 downto 0);
				DataD : in  STD_LOGIC_VECTOR (3 downto 0);
				Anodes : out  STD_LOGIC_VECTOR (3 downto 0);
				Cathodes : out  STD_LOGIC_VECTOR (6 downto 0));
end Disp4x7SegRefComp;

architecture Behavioral of Disp4x7SegRefComp is
type MATRICE is array (0 to 15) of STD_LOGIC_VECTOR (6 downto 0);

signal Data4x4Bits : STD_LOGIC_VECTOR (15 downto 0) := x"0000";
signal Adressage : STD_LOGIC_VECTOR (3 downto 0) := x"0";

-- signal Comptage : STD_LOGIC_VECTOR (3 downto 0) := x"0";
-- alias Decodage is Comptage (3 downto 2);
signal Comptage : STD_LOGIC_VECTOR (19 downto 0) := x"00000";
--alias Decodage is Comptage (19 downto 18);
alias Decodage is Comptage (18 downto 17);

constant CODAGE7SEGMENTS : MATRICE := (--"1111111",  -- Caractere " "
                                       "1000000", -- Caractere "0"
                                       "1111001", -- Caractere "1"
                                       "0100100", -- Caractere "2"
                                       "0110000", -- Caractere "3"
                                       "0011001", -- Caractere "4"
                                       "0010010", -- Caractere "5"
                                       "0000010", -- Caractere "6"
                                       "1111000", -- Caractere "7"
                                       "0000000", -- Caractere "8"
                                       "0010000", -- Caractere "9"
                                       "0001000", -- Caractere "A"
                                       "0000011", -- Caractere "B"
                                       "1000110", -- Caractere "C"
                                       "0100001", -- Caractere "D"
                                       "0000110", -- Caractere "E"
													"1111111"  -- Caractere " "
                                       --"0001110"  -- Caractere "F"
													);

begin

process (CLK)
	begin
		if (CLK' event and CLK = '1') then
			 Comptage <= Comptage + '1';
		end if;
end process;

Anodes <= "1110" when Decodage = "00" else 
	       "1101" when Decodage = "01" else 
	       "1011" when Decodage = "10" else 
	       "0111";

Data4x4Bits <= DataD & DataC & DataB & DataA; 
Adressage <= Data4x4Bits (((CONV_INTEGER(Decodage) * 4) + 3) downto (CONV_INTEGER(Decodage) * 4));	
Cathodes <= CODAGE7SEGMENTS (CONV_INTEGER(Adressage)); 

end Behavioral;
