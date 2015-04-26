-----------------------------
-- OrgArq I - T1				--
-- Half-Adder					--
-----------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity h_adder is
	port(
		a, b, cin:	in		std_logic;
		s, carry:	out	std_logic
	);
end h_adder;

	architecture HA of h_adder is
begin
	s <= a xor b xor cin;
	carry <= (a and b) or (a and cin) or (b and cin);
end HA;

