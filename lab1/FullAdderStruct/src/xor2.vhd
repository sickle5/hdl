 -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--Michael Sarlo
--lab 1
--9/1/17
--xor gate
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;      

entity xor2 is 
  port (
    a       : in std_logic;
    b       : in std_logic;
	z       : out std_logic
  );
end xor2;

architecture arch of xor2 is
begin 
  z  <= (a xor b);
end arch; 