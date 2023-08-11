--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : globalRotary.vhf
-- /___/   /\     Timestamp : 06/07/2021 11:18:16
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl U:/projet_elec/Alarme_final_codeur/globalRotary.vhf -w U:/projet_elec/Alarme_final_codeur/globalRotary.sch
--Design Name: globalRotary
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

entity globalRotary is
   port ( CLK         : in    std_logic; 
          rotatif_A   : in    std_logic; 
          rotatif_B   : in    std_logic; 
          E           : out   std_logic_vector (3 downto 0); 
          Modulo_code : out   std_logic);
end globalRotary;

architecture BEHAVIORAL of globalRotary is
   signal XLXN_6      : std_logic;
   signal XLXN_7      : std_logic;
   component rotaryFSM
      port ( CLK       : in    std_logic; 
             rotatif_A : in    std_logic; 
             rotatif_B : in    std_logic; 
             rotEvent  : out   std_logic; 
             rotSens   : out   std_logic);
   end component;
   
   component genericCount
      port ( clk       : in    std_logic; 
             enableIn  : in    std_logic; 
             upDown    : in    std_logic; 
             enableOut : out   std_logic; 
             S         : out   std_logic_vector (3 downto 0));
   end component;
   
begin
   XLXI_1 : rotaryFSM
      port map (CLK=>CLK,
                rotatif_A=>rotatif_A,
                rotatif_B=>rotatif_B,
                rotEvent=>XLXN_6,
                rotSens=>XLXN_7);
   
   XLXI_2 : genericCount
      port map (clk=>CLK,
                enableIn=>XLXN_6,
                upDown=>XLXN_7,
                enableOut=>Modulo_code,
                S(3 downto 0)=>E(3 downto 0));
   
end BEHAVIORAL;


