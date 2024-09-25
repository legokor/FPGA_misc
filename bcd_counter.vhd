----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:49:43 09/25/2024 
-- Design Name: 
-- Module Name:    bcd_counter - Behavioral 
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

entity bcd_counter is
    Port ( clk : in  STD_LOGIC;
           rstn : in  STD_LOGIC;
           dir : in  STD_LOGIC;
           en : in  STD_LOGIC;
           cntrl : out  STD_LOGIC_VECTOR (3 downto 0);
			  cntrh : out  STD_LOGIC_VECTOR (3 downto 0));
end bcd_counter;

architecture Behavioral of bcd_counter is

begin

process (clk, rstn) is
begin
	if (rstn='1') then
	   cntrl<=(others=>'0');
		cntrh<=(others=>'0');
	else if(en='1') then
		if(dir='1') then
			if(cntrl='1111')
				if(cntrh='1111')
						cntrl<= cntrl<=(others=>'0');
						cntrh<= cntrh<=(others=>'0');
				else
					cntrh<=cntrh+'1';
			else
				cntrl<=cntrl+'1';
		else
			if(cntrh='0000')
				if(cntrh='0000')  --?? begin end kell??
						cntrl<= '1111';
						cntrh<= '1111';
				else
					cntrl<=cntrh-'1';
			else
				cntrl<=cntrl-'1';

end

end Behavioral;

