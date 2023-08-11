----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:45:33 03/15/2021 
-- Design Name: 
-- Module Name:    DeDouble4B - Behavioral 
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

entity DeDouble4B is
    Port ( E : in  STD_LOGIC_VECTOR (3 downto 0);
           A : out  STD_LOGIC_VECTOR (3 downto 0);
           B : out  STD_LOGIC_VECTOR (3 downto 0));
end DeDouble4B;

architecture Behavioral of DeDouble4B is
signal A_sig, B_sig : STD_LOGIC_VECTOR (3 downto 0) := (others =>'0');
begin

A_sig <= E;
B_sig <= A_sig;

A <= A_sig;
B <= B_sig;

end Behavioral;

