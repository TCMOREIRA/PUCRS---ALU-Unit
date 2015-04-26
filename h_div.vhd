-----------------------------
-- OrgArq I - T1				--
-- Half-Subtrator				--
-----------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity h_sub is
	port(
		a, b, cin: in std_logic;
		s, carry: out std_logic
	);
end h_sub;

architecture HS of h_sub is
begin
	s <= a xor b xor cin;
	carry <= (a and b) or (a and cin) or cin;
end HS;