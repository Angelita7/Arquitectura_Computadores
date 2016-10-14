----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:50:41 10/11/2016 
-- Design Name: 
-- Module Name:    Instruction_Memory - Behavioral 
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
IEEE biblioteca;
utilizar IEEE.STD_LOGIC_1164.ALL;
utilizar IEEE.STD_LOGIC_UNSIGNED.ALL;
utilizar std.textio.all;

- Elimine la siguiente declaraci�n de la biblioteca si se utiliza
- funciones aritm�ticas con valores con o sin signo
--use IEEE.NUMERIC_STD.ALL;

- Elimine la siguiente declaraci�n biblioteca si instanciar
- Las primitivas de Xilinx en este c�digo.
UNISIM --library;
--use UNISIM.VComponents.all;

entidad es instructionMemory
    Puerto ( 
			  --clk: en std_logic;
			  Direcci�n: en STD_LOGIC_VECTOR (31 downto 0);
           reset: en std_logic;
           outInstruction: Fuera STD_LOGIC_VECTOR (31 downto 0));
terminar instructionMemory;

arquitectura arqInstructionMemory de instructionMemory es

	Tipo rom_type es array (0 a 63) de std_logic_vector (31 downto 0);
		
	funci�n impura InitRomFromFile (RomFileName: en cadena) de retorno es rom_type
		ARCHIVO fichero rom: Texto read_mode abierto es RomFileName;
		RomFileLine variables: la l�nea;
		temp_bv variables: bit_vector (31 downto 0);
		temp_mem variables: rom_type;
		empezar
			porque yo en bucle rom_type'range
				readline (fichero rom, RomFileLine);
				leer (RomFileLine, temp_bv);
				temp_mem (i): = to_stdlogicvector (temp_bv);
			Ciclo de sitio;
		temp_mem regresar;
	Funci�n del final;
	
	instrucciones de se�al: rom_type: = InitRomFromFile ( "program.data");
	
empezar
--reset, direcci�n, instrucciones)
	proceso (de reposici�n, direcci�n, instrucciones) - CLK)
	empezar
		--Si (rising_edge (CLK)), entonces
			si (reset = '1') a continuaci�n,
				outInstruction <= (otros => '0');
			m�s
				outInstruction <= instrucciones (conv_integer (direcci�n (5 downto 0)));
			terminara si;
		--terminara si;
	proceso finalizado;
terminar arqInstructionMemory;