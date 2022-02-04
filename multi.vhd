----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/03/2022 06:36:26 PM
-- Design Name: 
-- Module Name: multi - Behavioral
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

entity multi is
    Port ( A1, B1, Sel1, A2, B2, Sel2, A3, B3, Sel3 : in STD_LOGIC;
           X1, X2, X3 : out STD_LOGIC);
end multi;

architecture Behavioral of multi is

begin
    X1 <= A1 when Sel1 = '1' else
        B1;
    TWO_multi:
    process(Sel2, A2, B2, Sel3, A3, B3)
    begin
        X2 <= B2;
        if(Sel2 = '1') then
            X2 <= A2;
        end if;
        if(Sel3 = '1') then
            X3 <= A3;
        else
            X3 <= B3;
        end if;
    end process TWO_multi;
end Behavioral;
