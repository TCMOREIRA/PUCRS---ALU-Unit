-----------------------------
-- OrgArq I - T1				--
-- Half-Or						--
-----------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity h_or is
	port(
		a, b	:	in		std_logic;
		s		:	out	std_logic
	);
end h_or;

architecture hOr of h_or is
begin
	s <= a or b;
end hOr;

