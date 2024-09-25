----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:23:52 09/25/2024 
-- Design Name: 
-- Module Name:    topmodul - Behavioral 
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

entity topmodul is
    Port ( clk : in  STD_LOGIC;
           btn(0) : in  STD_LOGIC;
           Led : out  STD_LOGIC_VECTOR (7 downto 0);
           sw(0) : in  STD_LOGIC);
end topmodul;

architecture Behavioral of topmodul is

signal sign : in  STD_LOGIC;

begin

bcd : bcd_counter
port map (
			  clk =>clk;
           rstn  => btn(0);
           dir  =>sw(0);
           en  =>sign;
           cntrl  =>Led(3 downto 0);
			  cntrh =>Led(7 downto 4);

)

sec : sec_cntr
port map(
			clk  =>clk;
           rstn  => btn(0);
           sec_pulse => sign;

);



end Behavioral;

