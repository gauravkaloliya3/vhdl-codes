-- Import the standard logic library
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity defines the "pins" (Inputs and Outputs)
entity and_gate is
    Port ( 
        A : in  std_logic;
        B : in  std_logic;
        Y : out std_logic
    );
end and_gate;

-- Architecture defines the internal behavior
architecture Behavioral of and_gate is
begin
    -- Simple assignment using the built-in 'and' operator
    Y <= A and B;
end Behavioral;