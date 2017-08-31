LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.functions.all;

ENTITY statistics IS 
	PORT(x1, x2, x3, x4, x5, x6, x7, x8: IN SIGNED(7 DOWNTO 0);
		SIGNAL ave_div_out, max_out, min_out: OUT SIGNED(7 DOWNTO 0);
		SIGNAL ave_sum_out: OUT SIGNED(10 DOWNTO 0));
END statistics;

ARCHITECTURE statistics OF statistics IS 
BEGIN 
	stats(x1, x2, x3, x4, x5, x6, x7, x8, ave_div_out, max_out, min_out, ave_sum_out);
END statistics;