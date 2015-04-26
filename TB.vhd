-----------------------------
-- OrgArq I - T1				--
-- Testbench					--
-----------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity tbULA is
end tbULA;
 
architecture tb of tbULA is 
   signal A			:	std_logic_vector(7 downto 0);
   signal B			:	std_logic_vector(7 downto 0);
   signal OP		:	std_logic_vector(2 downto 0);
   signal S			:	std_logic_vector(7 downto 0);
	signal N,Z,C,V :	std_logic;

begin
	ula:	entity work.f_ULA 
			port map(
						A => A,
						B => B,
						OP => OP,
						S => S,
						N => N,
						Z => Z,
						C => C,
						V => V
						);
						A <=	"00000101", "00000111" after 10ns, 
								"00001100" after 20ns,	"00000110" after 30ns, 
								"00000001" after 40ns,	"00000110" after 50ns, 
								"00001100" after 60ns,	"00000100" after 70ns, 
								"00000100" after 80ns,	"00000110" after 90ns, 
								"00000101" after 100ns,	"00000100" after 110ns, 
								"00000101" after 120ns,	"00000101" after 130ns, 
								"00000100" after 140ns,	"00000101" after 150ns, 
								"00000101" after 160ns,	"00000100" after 170ns, 
								"00000101" after 180ns,	"00000101" after 190ns, 
								"00000100" after 200ns;
						B <=	"00000011", "00000101" after 10ns, 
								"00000010" after 20ns,	"00001011" after 30ns, 
								"00000001" after 40ns,	"00000010" after 50ns, 
								"00000001" after 60ns,	"00000101" after 70ns, 
								"00000100" after 80ns,	"00000101" after 90ns, 
								"00000101" after 100ns,	"00000100" after 110ns, 
								"00000101" after 120ns;
						OP <=	"000", "001" after 30ns, "010" after 60ns, 
								"011" after 90ns, "100" after 120ns, "101" after 150ns, 
								"110" after 180ns, "111" after 210ns;
end;