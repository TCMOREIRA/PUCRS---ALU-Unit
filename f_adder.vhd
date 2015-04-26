-----------------------------
-- OrgArq I - T1				--
-- Full-Adder					--
-----------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity f_adder is
	port(
		A, B	:	in		std_logic_vector(7 downto 0);
		cout	:	out	std_logic;
		over_F: 	out	std_logic;
		op		:	in		std_logic;
		S		:	out	std_logic_vector(7 downto 0)
	);
end f_adder;

architecture FA of f_adder is
	signal res: std_logic_vector(7 downto 0);
begin
	A0: entity work.h_adder port map(cin => op,		a => A(0), b => B(0), carry => res(0), s => S(0));
	A1: entity work.h_adder port map(cin => res(0), a => A(1), b => B(1), carry => res(1), s => S(1));
	A2: entity work.h_adder port map(cin => res(1), a => A(2), b => B(2), carry => res(2), s => S(2));
	A3: entity work.h_adder port map(cin => res(2), a => A(3), b => B(3), carry => res(3), s => S(3));
	A4: entity work.h_adder port map(cin => res(3), a => A(4), b => B(4), carry => res(4), s => S(4));
	A5: entity work.h_adder port map(cin => res(4), a => A(5), b => B(5), carry => res(5), s => S(5));
	A6: entity work.h_adder port map(cin => res(5), a => A(6), b => B(6), carry => res(6), s => S(6));
	A7: entity work.h_adder port map(cin => res(6), a => A(7), b => B(7), carry => res(7), s => S(7));
	cout <= res(7);
	over_F <= res(7) xor res(6);
end FA;

