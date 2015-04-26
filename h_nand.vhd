-----------------------------
-- OrgArq I - T1				--
-- Half-Nand					--
-----------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity h_nand is
	port(
			a, b	:	in		std_logic;
			s		:	out	std_logic
	);
end h_nand;

architecture hNand of h_nand is
begin	
	s <= a nand b;
end hNand;

