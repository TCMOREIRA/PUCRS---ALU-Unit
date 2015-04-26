library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cod is
	port (
		EntradaCod : in std_logic_vector(3 downto 0);
		SaidaCod : out std_logic_vector(3 downto 0)
	);
end entity cod;

architecture cod of cod is
	
begin

	with EntradaCod select
		SaidaCod <=
		
			"0" when "0",
			
			"1" when "1",
			
			"2" when "2",
			
			"3" when "3",
			
			"4" when "4",
			
			"5" when "5",
			
			"6" when "6",
			
			"7" when "7",
			
			"8" when "8",
			
			"9" when "9",
			
			"A" when "A",
			
			"B" when "B",
			
			"C" when "C",
			
			"D" when "D",
			
			"E" when "E",
			
			"F" when "F",
			
			"" when others;			

end architecture cod;
