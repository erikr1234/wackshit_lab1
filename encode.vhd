----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/03/2022 06:29:49 PM
-- Design Name: 
-- Module Name: encode - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

entity encode is
    Port ( A : in std_logic_vector (3 downto 0);
           B : out std_logic_vector (1 downto 0));   
end encode;

architecture Behavioral of encode is
begin
    process(a)
    begin
         if (a="1000") then
         b <= "00";
         elsif (a="0100") then
         b <= "01";
         elsif (a="0010") then
         b <= "10";
         elsif (a="0001") then
         b <= "11";
         else
         b <= "0000";
         end if;
    end process;

end Behavioral;
