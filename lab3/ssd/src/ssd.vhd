
library ieee;
use ieee.std_logic_1164.all;

entity ssd is
  port (
    input             : in  std_logic_vector(3 downto 0); 
    clk             : in  std_logic; 
    reset           : in  std_logic;
    hex0, hex1            : out std_logic_vector(6 downto 0)
  );
end ssd;

architecture beh of ssd is
constant zero : 
            std_logic_vector(6 downto 0):= "1000000";
    constant one : 
            std_logic_vector(6 downto 0):= "1111001";
    constant two : 
            std_logic_vector(6 downto 0):= "0100100";
    constant three : 
            std_logic_vector(6 downto 0):= "0110000";
    constant four : 
            std_logic_vector(6 downto 0):= "0011001";
    constant five : 
            std_logic_vector(6 downto 0):= "0010010";
    constant six : 
            std_logic_vector(6 downto 0):= "0000010";
    constant seven : 
            std_logic_vector(6 downto 0):= "1111000";
    constant eight : 
            std_logic_vector(6 downto 0):= "0000000";
    constant nine : 
            std_logic_vector(6 downto 0):= "0011000";
    constant a : 
            std_logic_vector(6 downto 0):= "0001000";
    constant b : 
            std_logic_vector(6 downto 0):= "0000011";
    constant c : 
            std_logic_vector(6 downto 0):= "1000110";
    constant d : 
            std_logic_vector(6 downto 0):= "0100001";
    constant e : 
            std_logic_vector(6 downto 0):= "0000110";
    constant f : 
            std_logic_vector(6 downto 0):= "0001110";
    begin
proc:process(clk, reset, bcd)
begin
    if (reset = '1') then
        hex0 <= zero;
    elsif (rising_edge(clk)) then
        case(input(3 downto 0)) is
            when "0000" => hex0 <= zero;
            when "0001" => hex0 <= one;
            when "0010" => hex0 <= two;
            when "0011" => hex0 <= three;
            when "0100" => hex0 <= four;
            when "0101" => hex0 <= five;
            when "0110" => hex0 <= six;
            when "0111" => hex0 <= seven;
            when "1000" => hex0 <= eight;
            when "1001" => hex0 <= nine;
            when "1010" => hex0 <= a;
            when "1011" => hex0 <= b;
            when "1100" => hex0 <= c;
            when "1101" => hex0 <= d;
            when "1110" => hex0 <= e;
            when others => hex0 <= f;
        end case;
        case(input(7 downto 4)) is
            when "0000" => hex1 <= zero;
            when "0001" => hex1 <= one;
            when "0010" => hex1 <= two;
            when "0011" => hex1 <= three;
            when "0100" => hex1 <= four;
            when "0101" => hex1 <= five;
            when "0110" => hex1 <= six;
            when "0111" => hex1 <= seven;
            when "1000" => hex1 <= eight;
            when "1001" => hex1 <= nine;
            when "1010" => hex1 <= a;
            when "1011" => hex1 <= b;
            when "1100" => hex1 <= c;
            when "1101" => hex1 <= d;
            when "1110" => hex1 <= e;
            when others => hex1 <= f;
        end case;
      end if;
      end process;
end beh;