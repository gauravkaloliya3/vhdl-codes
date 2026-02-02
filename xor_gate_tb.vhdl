library ieee;
use ieee.std_logic_1164.all;

entity xor_gate_tb is

end xor_gate_tb;

architecture tb of xor_gate_tb is

    
    signal a_tb : std_logic := '0';
    signal b_tb : std_logic := '0';
    signal y_tb : std_logic;

begin

    
    DUT : entity work.xor_gate
        port map (
            a => a_tb,
            b => b_tb,
            y => y_tb
        );


    stim_proc : process
    begin
        
        a_tb <= '0';
        b_tb <= '0';
        wait for 10 ns;


        a_tb <= '0';
        b_tb <= '1';
        wait for 10 ns;

        
        a_tb <= '1';
        b_tb <= '0';
        wait for 10 ns;

        
        a_tb <= '1';
        b_tb <= '1';
        wait for 10 ns;

        
        wait;
    end process;

end tb;
