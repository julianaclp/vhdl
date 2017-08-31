LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

PACKAGE functions IS
	PROCEDURE stats(x1, x2, x3, x4, x5, x6, x7, x8: IN SIGNED(7 DOWNTO 0); 
		SIGNAL ave_sum, ave_div, max, min: OUT SIGNED(7 DOWNTO 0));
		type order_array is array (0 to 7) of SIGNED(7 DOWNTO 0);
END functions;

PACKAGE BODY functions IS
	PROCEDURE stats (x1, x2, x3, x4, x5, x6, x7, x8: IN SIGNED(7 DOWNTO 0); 
		SIGNAL ave_sum, ave_div, max, min: OUT SIGNED(7 DOWNTO 0)) IS
	variable x : order_array;
	variable max_temp, min_temp: SIGNED(7 DOWNTO 0);
	variable ave_sum_temp: SIGNED(7 DOWNTO 0) := (OTHERS => '0');
	BEGIN 
		x := (x1, x2, x3, x4, x5, x6, x7, x8);
		ave_sum_temp := x1+x2+x3+x4+x5+x6+x7+x8;
		ave_sum <= ave_sum_temp;
		ave_div <= ave_sum_temp/8;
		max_temp := x1;
		min_temp := x1;
		FOR i IN 0 TO 7 LOOP
			IF x(i) > max_temp THEN
				max_temp := x(i);
			END IF;
			IF x(i) < min_temp THEN 
				min_temp := x(i);
			END IF;
		END LOOP;
		max <= max_temp;
		min <= min_temp;
	END stats;
END functions;