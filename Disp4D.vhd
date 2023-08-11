----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:14:43 03/15/2021 
-- Design Name: 
-- Module Name:    Disp4D - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Disp4D is
    Port ( CLK : in STD_LOGIC;
			  capteur : in STD_LOGIC;
			  BP : in  STD_LOGIC;
			  rotatif_A : in STD_LOGIC;
			  rotatif_B: in STD_LOGIC;
			  CORRECT : out STD_LOGIC;
			  DEFAUT : out  STD_LOGIC;
			  ERREUR : out  STD_LOGIC;
           O1, O2, O3, O4 : out STD_LOGIC_VECTOR (3 downto 0);
			  ST1, ST2, ST3, ST4 : out STD_LOGIC;
			  Freq : out STD_LOGIC);
end Disp4D;

architecture Behavioral of Disp4D is
	signal Demux_sig : STD_LOGIC_VECTOR (1 downto 0);
	signal ETAT_sig : STD_LOGIC_VECTOR (2 downto 0);
	signal INIT_sig : STD_LOGIC;
	signal A, B, C, D, D1, D2, D3 : STD_LOGIC_VECTOR (3 downto 0);
	signal C1, C2, C3, C4, E1, E2, E3, E4 : STD_LOGIC;
	signal EN1, EN2, EN3, EN4 : STD_LOGIC;
	signal S1, S2 : STD_LOGIC_VECTOR (3 downto 0);
	signal S3, S4 : STD_LOGIC_VECTOR (3 downto 0);
	signal S5, S6 : STD_LOGIC_VECTOR (3 downto 0);
	signal S7, S8 : STD_LOGIC_VECTOR (3 downto 0);
	signal Alarme : STD_LOGIC;
	signal E : STD_LOGIC_VECTOR (3 downto 0);
	signal modulo_code: STD_LOGIC;
	
begin
	gestionDeverouillage : entity work.gestionDeverouillage
		  port map (SW =>E, BP=>BP, CLK =>CLK, capteur=>capteur, CORRECT=>CORRECT, ERREUR=>ERREUR, DEFAUT=>DEFAUT, ALARME=>Alarme, ETATS=>ETAT_sig); 
	Seq : entity work.seq
		  port map (CLK=>CLK, INIT=>INIT_sig, ETAT=>ETAT_sig, Sel=>Demux_sig, ENABLE1=>EN1, ENABLE2=>EN2, ENABLE3=>EN3, ENABLE4=>EN4);
	DeMux : entity work.DeMux
        port map ( E=>E, Sel=>Demux_sig, A=>A,B=>B,C=>C,D=>D);
		  
	Enregistre1 : entity work.Enregistre0
		  port map (CLK=>CLK, D=>A, EN=>EN1, Q=>S2, ST=>E1);
	CodeNoir1 : entity work.CodeNoir
		  port map (E=>A, CLK=>CLK, ST=>C1, S=>S1);
	MUX1 : entity work.MUX2x4v1x4
		  port map (A=>S1, B=>S2, EN=>EN1, O=>O1);
	MUXC1 : entity work.MUX2x1v1x1
		  port map (A=>C1, B=>E1, EN=>EN1, O=>ST1);		  
		 
	Init1 : entity work.MUX_INIT
		  port map (E=>B, EN=>INIT_sig, S=>D1);		 
	Enregistre2 : entity work.enregistre
		  port map (CLK=>CLK, D=>D1, EN=>EN2, INIT=>INIT_sig, Q=>S4, ST=>E2);
	CodeNoir2 : entity work.CodeNoir
		  port map (E=>B, CLK=>CLK, ST=>C2,S=>S3);
	MUX2 : entity work.MUX2x4v1x4
		  port map (A=>S3, B=>S4, EN=>EN2, O=>O2);
	MUXC2 : entity work.MUX2x1v1x1
		  port map (A=>C2, B=>E2, EN=>EN2, O=>ST2);
		  
	Init2 : entity work.MUX_INIT
		  port map (E=>C, EN=>INIT_sig, S=>D2);
	Enregistre3 : entity work.enregistre
		  port map (CLK=>CLK, D=>D2, EN=>EN3, INIT=>INIT_sig, Q=>S6, ST=>E3);
	CodeNoir3 : entity work.CodeNoir
		  port map (E=>C, CLK=>CLK, ST=>C3, S=>S5);
	MUX3 : entity work.MUX2x4v1x4
		  port map (A=>S5, B=>S6, EN=>EN3, O=>O3);
	MUXC3 : entity work.MUX2x1v1x1
		  port map (A=>C3, B=>E3, EN=>EN3, O=>ST3);

	Init3 : entity work.MUX_INIT
		  port map (E=>D, EN=>INIT_sig, S=>D3);		
	Enregistre4 : entity work.enregistre
		  port map (CLK=>CLK, D=>D3, EN=>EN4, INIT=>INIT_sig, Q=>S8, ST=>E4);
	CodeNoir4 : entity work.CodeNoir
		  port map (E=>D, CLK=>CLK, ST=>C4, S=>S7);
	MUX4 : entity work.MUX2x4v1x4
		  port map (A=>S7, B=>S8, EN=>EN4, O=>O4);
	MUXC4 : entity work.MUX2x1v1x1
		  port map (A=>C4, B=>E4, EN=>EN4, O=>ST4);
		  
	son : entity work.son
		   port map (CLK=>CLK, Alarme=>Alarme, Freq=>Freq);
	globalRotary : entity work.globalRotary
		   port map (CLK=>CLK, rotatif_A=>rotatif_A, rotatif_B=>rotatif_B, E=>E);

end Behavioral;

