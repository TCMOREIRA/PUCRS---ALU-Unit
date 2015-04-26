-----------------------------
-- OrgArq I - T1				--
-- Half-Xor						--
-----------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity h_xor is
	port(
		a, b: in 	std_logic;
		s: 	out 	std_logic
	);
end h_xor;

architecture hXor of h_xor is
begin
	s <= a xor b;
end hXor;