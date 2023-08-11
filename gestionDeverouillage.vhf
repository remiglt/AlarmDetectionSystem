--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : gestionDeverouillage.vhf
-- /___/   /\     Timestamp : 06/07/2021 11:18:17
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl U:/projet_elec/Alarme_final_codeur/gestionDeverouillage.vhf -w U:/projet_elec/Alarme_final_codeur/gestionDeverouillage.sch
--Design Name: gestionDeverouillage
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity gestionDeverouillage is
   port ( BP      : in    std_logic; 
          Capteur : in    std_logic; 
          CLK     : in    std_logic; 
          SW      : in    std_logic_vector (3 downto 0); 
          ALARME  : out   std_logic; 
          CORRECT : out   std_logic; 
          DEFAUT  : out   std_logic; 
          ERREUR  : out   std_logic; 
          ETATS   : out   std_logic_vector (2 downto 0));
end gestionDeverouillage;

architecture BEHAVIORAL of gestionDeverouillage is
   signal XLXN_1  : std_logic;
   signal XLXN_13 : std_logic_vector (2 downto 0);
   signal XLXN_53 : std_logic;
   component ComparateurCodes
      port ( Switchs      : in    std_logic_vector (3 downto 0); 
             S            : in    std_logic_vector (2 downto 0); 
             code_correct : out   std_logic);
   end component;
   
   component deverouille
      port ( clk          : in    std_logic; 
             capteur      : in    std_logic; 
             code_correct : in    std_logic; 
             BP           : in    std_logic; 
             alarme       : out   std_logic; 
             voyant1      : out   std_logic; 
             voyant2      : out   std_logic; 
             voyant3      : out   std_logic; 
             ETATS        : out   std_logic_vector (2 downto 0); 
             S            : out   std_logic_vector (2 downto 0));
   end component;
   
   component DFM
      port ( CLK    : in    std_logic; 
             Btn    : in    std_logic; 
             Detect : out   std_logic);
   end component;
   
begin
   comp1 : ComparateurCodes
      port map (S(2 downto 0)=>XLXN_13(2 downto 0),
                Switchs(3 downto 0)=>SW(3 downto 0),
                code_correct=>XLXN_1);
   
   dev1 : deverouille
      port map (BP=>XLXN_53,
                capteur=>Capteur,
                clk=>CLK,
                code_correct=>XLXN_1,
                alarme=>ALARME,
                ETATS(2 downto 0)=>ETATS(2 downto 0),
                S(2 downto 0)=>XLXN_13(2 downto 0),
                voyant1=>CORRECT,
                voyant2=>DEFAUT,
                voyant3=>ERREUR);
   
   DFM1 : DFM
      port map (Btn=>BP,
                CLK=>CLK,
                Detect=>XLXN_53);
   
end BEHAVIORAL;


