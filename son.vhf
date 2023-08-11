--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : son.vhf
-- /___/   /\     Timestamp : 06/07/2021 11:18:16
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl U:/projet_elec/Alarme_final_codeur/son.vhf -w U:/projet_elec/Alarme_final_codeur/son.sch
--Design Name: son
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

entity son is
   port ( Alarme : in    std_logic; 
          CLK    : in    std_logic; 
          Freq   : out   std_logic);
end son;

architecture BEHAVIORAL of son is
   signal XLXN_1 : std_logic;
   signal XLXN_2 : std_logic;
   signal XLXN_3 : std_logic;
   component Cmpt
      port ( clk : in    std_logic; 
             EN  : in    std_logic; 
             CM1 : out   std_logic; 
             CM2 : out   std_logic; 
             CM3 : out   std_logic);
   end component;
   
   component MUX2v1
      port ( FSK1 : in    std_logic; 
             FSK2 : in    std_logic; 
             SEL  : in    std_logic; 
             F    : out   std_logic);
   end component;
   
begin
   XLXI_1 : Cmpt
      port map (clk=>CLK,
                EN=>Alarme,
                CM1=>XLXN_1,
                CM2=>XLXN_2,
                CM3=>XLXN_3);
   
   XLXI_2 : MUX2v1
      port map (FSK1=>XLXN_1,
                FSK2=>XLXN_2,
                SEL=>XLXN_3,
                F=>Freq);
   
end BEHAVIORAL;


