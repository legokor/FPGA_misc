----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:40:09 09/11/2024 
-- Design Name: 
-- Module Name:    sec_cntr - Behavioral 
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

entity sec_cntr is
	Generic (
		clk_freq: integer
	);
    Port ( clk : in  STD_LOGIC;
           rstn : in  STD_LOGIC;
           sec_pulse : out  STD_LOGIC);
end sec_cntr;

architecture Behavioral of sec_cntr is
 
signal cntr : std_logic_vector (31 downto 0);

begin

process( clk, rstn ) is
begin
	if(rstn='1') then
		cntr<=(others=>'0');
	else if( rising_edge (clk)) then
		if(to_integer cntr= clk_freq-1) then
			cntr<=(others=>'0');
		else 
			cntr<= cntr+x'00000
			
end
	





end


end Behavioral;

