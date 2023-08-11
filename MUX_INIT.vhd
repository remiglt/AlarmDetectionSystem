----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:48:55 05/10/2021 
-- Design Name: 
-- Module Name:    MUX_INIT - Behavioral 
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

entity MUX_INIT is
    Port ( E : in  STD_LOGIC_VECTOR (3 downto 0);
			  EN : in STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0));
end MUX_INIT;

architecture Behavioral of MUX_INIT is

    begin
       S <= E when EN='0'
            else "0000";

end Behavioral;

