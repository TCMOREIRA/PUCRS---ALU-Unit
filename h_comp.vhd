-----------------------------
-- OrgArq I - T1				--
-- Half-Complement			--
-----------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity h_comp is
	port(
		a : in	std_logic;
		s : out	std_logic
	);
end h_comp;

architecture cDois of h_comp is
begin
	s <= not a;
end cDois;
