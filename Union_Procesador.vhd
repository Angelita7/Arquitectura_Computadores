----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:42:51 10/17/2016 
-- Design Name: 
-- Module Name:    Union_Procesador - Behavioral 
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Tb_Union_Procesador IS
END Tb_Union_Procesador;
 
ARCHITECTURE behavior OF Tb_Union_Procesador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Union_Procesador
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         Out_procesador : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal Out_procesador : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Union_Procesador PORT MAP (
          clk => clk,
          rst => rst,
          Out_procesador => Out_procesador
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
    stim_proc: process
   begin		
	
	    rst<='1';
	
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		 rst<='0';

       
      wait;
   end process;

END;