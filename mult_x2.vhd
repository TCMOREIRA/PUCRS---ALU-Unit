-----------------------------
-- OrgArq I - T1				--
-- Multiplica A por 2		--
-----------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mult_x2 is
	port(
		A: in		std_logic_vector(7 downto 0);
		S: out	std_logic_vector(7 downto 0);
		V: out	std_logic
	);
end mult_x2;

architecture mX2 of mult_x2 is
begin
	S(0) <= '0';
	S(1) <= A(0);
	S(2) <= A(1);
	S(3) <= A(2);
	S(4) <= A(3);
	S(5) <= A(4);
	S(6) <= A(5);
	S(7) <= A(6);
	
	V <= A(7);
end mX2;
