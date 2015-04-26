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
			"10001000111111" when "0",
			
			"00001000000110" when "1",
			
			"00010001011011" when "2",
			
			"00010000001111" when "3",
			
			"00010001100101" when "4",
			
			"00010001101101" when "5",
			
			"00010001111101" when "6",
			
			"00010000000111" when "7",
			
			"00010001111111" when "8",
			
			"00010001101111" when "9",
			
			"00010001110111" when "A",
			
			"01010100001111" when "B",
			
			"00000000111001" when "C",
			
			"01000100001111" when "D",
			
			"00000001111001" when "E",
			
			"00000001110001" when "F",
			
			"00000000000000" when others;
	


end architecture Display;
