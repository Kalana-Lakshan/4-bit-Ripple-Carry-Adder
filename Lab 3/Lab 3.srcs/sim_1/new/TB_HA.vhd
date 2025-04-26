----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2025 01:32:22 PM
-- Design Name: 
-- Module Name: TB_HA - Behavioral
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

entity TB_HA is
--  Port ( );
end TB_HA;

architecture Behavioral of TB_HA is
 COMPONENT HA
 PORT (A,B:IN STD_LOGIC;
        S,C : OUT STD_LOGIC);
 END COMPONENT;
 
 SIGNAL g0,g1:std_logic;
 SIGNAL o1,o2:std_logic;
begin
    UUT: HA Port Map(
    A=>g0,
    B=>g1,
    S=>o1,
    C=>o2);
 process
 begin
    g0<='0';
    g1<='0';
    
    WAIT FOR 100 ns;
    g1<='1';
    WAIT FOR 100 ns;
    g0<='1';
    g1<='0';
    WAIT FOR 100 ns;
    g1<='1';
    
    WAIT;
    end process;
    

end Behavioral;
