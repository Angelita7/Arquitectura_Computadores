----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:52:38 10/14/2016 
-- Design Name: 
-- Module Name:    Unidad_Control - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Unidad_Control is
    Port ( op : in  STD_LOGIC_VECTOR (1 downto 0);
           op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           Out_Unidad_control : out  STD_LOGIC_VECTOR (5 downto 0));
end Unidad_Control;

architecture Behavioral of Unidad_Control is

begin
    process(op,op3)
  begin
if (op="10")then
			       
					 --del 1 al 20
					 case op3 is 
				
							when "000000" => -- ADD
								Out_Unidad_control  <= "000001";
								
							when "010000" => -- ADDcc
								Out_Unidad_control  <= "000010";
								
							when "011000" => -- ADDX
								Out_Unidad_control  <= "000011";
							
							when "001000" => -- ADDXcc
								Out_Unidad_control  <= "000100";

							when "000100" => -- SUB
								 Out_Unidad_control <= "000101";
						 
							when "010100" => -- SUBcc
								 Out_Unidad_control <= "000110";	
								 
							when "001100" => -- SUBX
								 Out_Unidad_control <= "000111";	
                     
                     when "011100" => -- SUBXcc
								 Out_Unidad_control <= "001000";							
								 
							when "000001" => -- AND
								Out_Unidad_control <= "001001";
								 
							when "000101" => -- ANDN
								Out_Unidad_control <= "001010";
							
                      when "010101" => -- ANDNcc
								Out_Unidad_control <= "001011";
								 
							when "010001" => -- ANDcc
								Out_Unidad_control <= "001100";							
								 
							when "000010" => -- OR
								Out_Unidad_control <= "001101";
								
							when "000110" => -- ORN
								Out_Unidad_control <= "001110";
								
							when "010010" => -- ORcc
								Out_Unidad_control <= "001111";
								
							when "010110" => -- ORNcc
								Out_Unidad_control <= "010000";	
								 
							when "000011" => -- XOR
								Out_Unidad_control  <= "010001"; 
								
							when "000111" => -- XNOR
								Out_Unidad_control <= "010010";
							
                     when "010011" => -- XORcc
								Out_Unidad_control  <= "010011"; 
								
							when "010111" => -- XNORcc
								Out_Unidad_control <= "010100";							
							when others => --Nop
								Out_Unidad_control <= "111111"; 
								
				end case;
						 
		end if; 

end process; 

end Behavioral;

