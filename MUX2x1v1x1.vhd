----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:44:21 06/08/2021 
-- Design Name: 
-- Module Name:    MUX2x1v1x1 - Behavioral 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX2x1v1x1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           EN : in STD_LOGIC;
           O : out STD_LOGIC);
end MUX2x1v1x1;

architecture Behavioral of MUX2x1v1x1 is

    begin
       O <= A when EN='0'
            else B;

end Behavioral;