-----------------------------
-- OrgArq I - T1				--
-- Full-Complement			--
-----------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity f_comp is
	port(
		A: in		std_logic_vector(7 downto 0);
		S: out	std_logic_vector(7 downto 0)
	);
end f_comp;

architecture fComp of f_comp is
begin
	A0: entity work.h_comp port map(a => A(0), s => S(0));
	A1: entity work.h_comp port map(a => A(1), s => S(1));
	A2: entity work.h_comp port map(a => A(2), s => S(2));
	A3: entity work.h_comp port map(a => A(3), s => S(3));
	A4: entity work.h_comp port map(a => A(4), s => S(4));
	A5: entity work.h_comp port map(a => A(5), s => S(5));
	A6: entity work.h_comp port map(a => A(6), s => S(6));
	A7: entity work.h_comp port map(a => A(7), s => S(7));
end fComp;

