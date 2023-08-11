----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:38:56 03/15/2021 
-- Design Name: 
-- Module Name:    DeMux - Behavioral 
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

entity DeMux is
    Port ( E : in  STD_LOGIC_VECTOR (3 downto 0);
			  Sel : in  STD_LOGIC_VECTOR (1 downto 0);
           A : out  STD_LOGIC_VECTOR (3 downto 0);
           B : out  STD_LOGIC_VECTOR (3 downto 0);
           C : out  STD_LOGIC_VECTOR (3 downto 0);
           D : out  STD_LOGIC_VECTOR (3 downto 0));
end DeMux;

architecture Behavioral of DeMux is

	begin
		A <= E when Sel = "00" else "0000";
		B <= E when Sel = "01" else "0000";
		C <= E when Sel = "10" else "0000";
		D <= E when Sel = "11" else "0000";

end Behavioral;

