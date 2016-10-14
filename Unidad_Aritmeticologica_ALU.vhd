----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:57:51 10/14/2016 
-- Design Name: 
-- Module Name:    Unidad_Aritmeticologica_ALU - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Unidad_Aritmeticologica_ALU is
    Port ( Out_Unidad_Control : in  STD_LOGIC_VECTOR (5 downto 0);
           contenido_registro1 : in  STD_LOGIC_VECTOR (31 downto 0);
           contenido_resgitro2 : in  STD_LOGIC_VECTOR (31 downto 0);
           Out_ALU : out  STD_LOGIC_VECTOR (31 downto 0));
end Unidad_Aritmeticologica_ALU;

architecture Behavioral of Unidad_Aritmeticologica_ALU is

begin


end Behavioral;

