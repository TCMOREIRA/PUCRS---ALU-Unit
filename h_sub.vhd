-----------------------------
-- OrgArq I - T1				--
-- Half-Divisor				--
-----------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity h_div is
	port(
		a, b, cin: in std_logic;
		s, carry: out std_logic
	);
end h_div;

architecture Hd of h_div is
begin
	s <= a xor b xor cin;
	carry <= (a and b) or (a and cin) or cin;
end HD;