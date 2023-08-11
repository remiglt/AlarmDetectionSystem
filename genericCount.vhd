----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- Create Date:    23:15:18 12/01/2016 
-- Design Name: 
-- Module Name:    genericCount - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
-- Dependencies: 
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity genericCount is
Generic ( size : INTEGER := 4; 
			 Modulo  : INTEGER := 16); 
Port ( clk : in  STD_LOGIC;
       enableIn : in  STD_LOGIC;
       upDown : in  STD_LOGIC;
       S : out  STD_LOGIC_VECTOR (size-1 downto 0);
       enableOut : out  STD_LOGIC);
end genericCount;

architecture Behavioral of genericCount is
signal d, q : STD_LOGIC_VECTOR (size-1 downto 0) := (others => '0');
begin
	process (clk)
	begin
			if (clk' event and clk = '1') then q <= d;
			end if;
	end process;

d <= (others => '0')                       when (q = (modulo-1) and enableIn = '1' and upDown = '1') else 
     CONV_STD_LOGIC_VECTOR(modulo-1, size) when (q = 0 and enableIn = '1' and upDown = '0') else 
	  q + '1'                               when (enableIn = '1' and upDown = '1') else 
	  q - '1'                               when (enableIn = '1' and upDown = '0') else 
	  q;

S <= q;
enableOut <= '1' when ((q = (modulo-1) and enableIn = '1' and upDown = '1') or 
                       (q = 0 and enableIn = '1' and upDown = '0'))
else         '0';
end Behavioral;
