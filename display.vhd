library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity display is
	port (
		Entrada : in std_logic_vector(3 downto 0);
		Saida : out std_logic_vector(13 downto 0)
	);
end entity display;

architecture Display of display is
	
	
begin

	with Entrada select
		Saida <=
			"10001000111111" when x"0",
			
			"00001000000110" when x"1",
			
			"00010001011011" when x"2",
			
			"00010000001111" when x"3",
			
			"00010001100101" when x"4",
			
			"00010001101101" when x"5",
			
			"00010001111101" when x"6",
			
			"00010000000111" when x"7",
			
			"00010001111111" when x"8",
			
			"00010001101111" when x"9",
			
			"00010001110111" when x"A",
			
			"01010100001111" when x"B",
			
			"00000000111001" when x"C",
			
			"01000100001111" when x"D",
			
			"00000001111001" when x"E",
			
			"00000001110001" when x"F",
			
			"00000000000000" when others;
	


end architecture Display;
