-------------------------------------------------------------------------------
-- Dr. Kaputa
-- state machine example
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;      

entity state_machine is 
  port (
    clk               : in std_logic;
    reset             : in std_logic;
    execute           : in std_logic;
    ms                : in std_logic;
    mr                : in std_logic;
    we                : out std_logic;
    en                : out std_logic_vector(4 downto 0)
  );
end state_machine;

architecture beh of state_machine is
-- signal declarations
constant read_write      : std_logic_vector(3 downto 0) := "0000";
constant writeNoper      : std_logic_vector(3 downto 0) := "0100";
constant writeCoper      : std_logic_vector(3 downto 0) := "0101";
constant write_s         : std_logic_vector(3 downto 0) := "0111";
constant read_s          : std_logic_vector(3 downto 0) := "0001";


signal state_reg      : std_logic_vector(3 downto 0);
signal state_next     : std_logic_vector(3 downto 0);

begin 
-- state register
process(clk,reset)
begin 
  if (reset = '1') then 
    state_reg <= read_write;
  elsif (clk'event and clk = '1') then
    state_reg <= state_next;
  end if;
end process;

-- next state logic
process(state_reg,execute)
begin
  -- default values
  state_next <= state_reg;    -- prevents a latch
  case state_reg is  
    when read_write =>
      we <= '0';
      if (execute = '1') then  
        state_next <= writeNoper;
      elsif (ms = '1') then
        state_next <= write_s;
      elsif (mr = '1') then
        state_next <= read_s;
      else
        state_next <= read_write;
     end if;
    when writeNoper=>
        state_next <= writeCoper;
        en <= "00010"; 
        we <= '1'; 
    when writeCoper =>
        state_next <= read_write;
        en <= "00100";
        we <= '1';
    when write_s =>
        state_next <= read_write;
        en <= "01000"; 
        we <= '1'; 
    when read_s =>
        state_next <= writeNoper;
        en <= "10000";
        we <= '0';
    when others =>
      state_next <= read_write;
  end case;
end process;
end beh; 