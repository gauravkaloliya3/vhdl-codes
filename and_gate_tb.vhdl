library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate_tb is
-- Testbench has NO ports
end and_gate_tb;

architecture Behavioral of and_gate_tb is

    -- Signals to connect to DUT
    signal A_tb : STD_LOGIC := '0';
    signal B_tb : STD_LOGIC := '0';
    signal Y_tb : STD_LOGIC;

begin

    -- Instantiate the DUT
    DUT: entity work.and_gate
        port map (
            A => A_tb,
            B => B_tb,
            Y => Y_tb
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Test case 1: 0 AND 0
        A_tb <= '0';
        B_tb <= '0';
        wait for 10 ns;

        -- Test case 2: 0 AND 1
        A_tb <= '0';
        B_tb <= '1';
        wait for 10 ns;

        -- Test case 3: 1 AND 0
        A_tb <= '1';
        B_tb <= '0';
        wait for 10 ns;

        -- Test case 4: 1 AND 1
        A_tb <= '1';
        B_tb <= '1';
        wait for 10 ns;

        -- Stop simulation
        wait;
    end process;

end Behavioral;
