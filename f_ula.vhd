-----------------------------
-- OrgArq I - T1				--
-- ULA							--
-----------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity f_ULA is
	port(
		A, B			:	in		std_logic_vector(7 downto 0);
		OP				:	in		std_logic_vector(2 downto 0);
		S				:	out	std_logic_vector(7 downto 0);
		N, Z, C, V	:	out	std_logic
	);
end f_ULA;

architecture TB of f_ULA is
	signal 	coutSomaSub, overFMultAx2, selectSomaSub, overFAddSub: std_logic;
	signal 	resSomaSub, resComplementoA, resComplementoB, resXor, resNand, resOr,
				somaOuSub, resCompB, resMultX2, incA, vlrBIncA : std_logic_vector(7 downto 0);
	signal SH, SL : std_logic_vector(3 downto 0);
begin
	
	--Displays de 14 segmentos
	Display1: entity work.display port map(Entrada => SH);
	Display2: entity work.display port map(Entrada => SL);
	
	-- Parte Aritmetica
	Add_Sub	:	entity work.f_adder	port map(A => A, B => somaOuSub, S => resSomaSub, 
															cout => coutSomaSub, op => selectSomaSub, 
															over_F => overFAddSub);
	MultX2	:	entity work.mult_x2	port map(A => A, V => overFMultAx2, S => resMultX2);
	Incr_A	: 	entity work.f_adder	port map(A => A, B => vlrBIncA, S => incA, 
															cout => coutSomaSub, op => selectSomaSub);
	-- Parte Logica
	Comp_A		: 	entity work.f_comp	port map(A => A, S => resComplementoA);
	Comp_B		: 	entity work.f_comp	port map(A => B, S => resComplementoB);
	X_Or		: 	entity work.f_xor 	port map(A => A, B => B, S => resXor);
	NaoE		:	entity work.f_nand	port map(A => A, B => B, S => resNand);
	Ou			:	entity work.f_or 	port map(A => A, B => B, S => resOr);
			
	somaOuSub <= resComplementoB when OP = "001" else B; 
	selectSomaSub <= '0' when OP = "000" else '1';
	vlrBIncA <= "00000000";
	
	process(resSomaSub, resComplementoA, resXor, resNand, resOr, OP, 
																						coutsomasub, overfaddsub, coutsomasub, resmultx2, overfmultax2, inca)
	begin
		case OP is
			when  "000"  =>  
							S <= resSomaSub; 
							C <= coutSomaSub;
							V <= overFAddSub;
							Z <= not(resSomaSub(0) or resSomaSub(1) or resSomaSub(2) 
										or resSomaSub(3) or resSomaSub(4) or resSomaSub(5) 
										or resSomaSub(6) or resSomaSub(7));
							N <= resSomaSub(7);
			when  "001"  =>  
							S <= resSomaSub; 
							C <= coutSomaSub;
							V <= overFAddSub;							
							Z <= not(resSomaSub(0) or resSomaSub(1) or resSomaSub(2) 
										or resSomaSub(3) or resSomaSub(4) or resSomaSub(5) 
										or resSomaSub(6) or resSomaSub(7));
							N <= resSomaSub(7); 
			when  "010" =>  
							S <= resMultX2; 
							Z <= not(resMultX2(0) or resMultX2(1) or resMultX2(2) 
										or resMultX2(3) or resMultX2(4) or resMultX2(5) 
										or resMultX2(6) or resMultX2(7));
							V <= overFMultAx2;
							C <= '0';
			when  "011" =>  
							S <= incA; 
							Z <= not(incA(0) or incA(1) or incA(2) or incA(3) 
										or incA(4) or incA(5) or incA(6) or incA(7));
							V <= '0';
			when  "100"  =>  
							S <= resComplementoA; 
							N <= resComplementoA(7);
							C <= '0';
							Z <= not(resComplementoA(0) or resComplementoA(1) 
										or resComplementoA(2) or resComplementoA(3) 
										or resComplementoA(4) or resComplementoA(5) 
										or resComplementoA(6) or resComplementoA(7));
			when  "101"  =>  
							C <= '0';
							S <= resOr;
							N <= resOr(7);
							Z <= not(resOr(0) or resOr(1) or resOr(2) 
										or resOr(3) or resOr(4) or resOr(5) 
										or resOr(6) or resOr(7));
			when  "110"  =>  
							C <= '0';
							S <= resXor; 
							N <= resXor(7);
							Z <= not(resXor(0) or resXor(1) or resXor(2) 
										or resXor(3) or resXor(4) or resXor(5) 
										or resXor(6) or resXor(7));
			when  "111"  =>  
							C <= '0';
							S <= resNand; 
							N <= resNand(7); 
							Z <= not(resNand(0) or resNand(1) or resNand(2) 
										or resNand(3) or resNand(4) or resNand(5) 
										or resNand(6) or resNand(7));
							
			when others  =>  S <= "00000000";
		end case;
	end process;
end TB; 
