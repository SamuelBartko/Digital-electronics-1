library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_d_latch is
--  Port ( );
end tb_d_latch;
    
architecture Behavioral of tb_d_latch is
     signal s_en      : STD_LOGIC; 
     signal s_arst    : STD_LOGIC; 
     signal s_d       : STD_LOGIC; 
     signal s_q       : STD_LOGIC;
     signal s_q_bar   : STD_LOGIC;
      
begin
    uut_d_latch: entity work.d_latch
    port map(
         en      => s_en,
         arst    => s_arst,
         d       => s_d,
         q       => s_q,
         q_bar   => s_q_bar
         );

    --------------------------------------------------------------------
    -- Reset generation process
    --------------------------------------------------------------------
    p_reset_gen : process
    begin
        s_arst <= '0';
        wait for 28 ns;
        
        s_arst <= '1';
        wait for 53 ns;
        
        s_arst <= '0';
        
        s_arst <= '0';
        wait for 350 ns;

        wait;
    end process p_reset_gen;    
    --------------------------------------------------------------------
    -- Data generation process
    --------------------------------------------------------------------
    p_stimulus : process
    begin
        report "Stimulus process started" severity note;
        
        s_d  <= '0';
        s_en <= '0';
        
        --d sekv
        wait for 10 ns;
        s_d  <= '1';
        wait for 10 ns;
        s_d  <= '0';
        wait for 10 ns;
        s_d  <= '1';
        wait for 10 ns;
        s_d  <= '0';
        wait for 5 ns;
        
        assert ((s_arst = '1') and (s_en = '0') and (s_q = '0') and (s_q_bar = '1'))
        report "Test failed for reset high, en low when s_d = '0'" severity error;
        
        wait for 5 ns;
        s_d  <= '1';
        wait for 5 ns;
        
        assert ((s_arst = '1') and (s_en = '0') and (s_q = '0') and (s_q_bar = '1'))
        report "Test failed for reset high, en low when s_d = '1'" severity error;
        
        wait for 5 ns;
        s_d  <= '0';
        --/d sekv
        
        s_en <= '1';
        
        --d sekv
        wait for 10 ns;
        s_d  <= '1';
        wait for 5 ns;
        
        assert ((s_arst = '1') and (s_en = '1') and (s_q = '0') and (s_q_bar = '1'))
        report "Test failed for reset high, en high when s_d = '1'" severity error;
        
        wait for 5 ns;
        s_d  <= '0';
        wait for 5 ns;
        
        assert ((s_arst = '1') and (s_en = '1') and (s_q = '0') and (s_q_bar = '1'))
        report "Test failed for reset high, en high when s_d = '0'" severity error;          
        
        wait for 5 ns;
        s_d  <= '1';
        wait for 10 ns;
        s_d  <= '0';
        wait for 10 ns;
        s_d  <= '1';
        wait for 5 ns;
        
        assert ((s_arst = '0') and (s_en = '1') and (s_q = '1') and (s_q_bar = '0'))
        report "Test failed for reset low, en high when s_d = '1'" severity error;
        
        wait for 15 ns;
        s_d  <= '0';
        wait for 5 ns;
        
        assert ((s_arst = '0') and (s_en = '1') and (s_q = '0') and (s_q_bar = '1'))
        report "Test failed for reset low, en high when s_d = '0'" severity error;
        --/d sekv
        
        --d sekv
        wait for 5 ns;
        s_d  <= '1';
        wait for 5 ns;
        s_en <= '0';
        wait for 5 ns;
        s_d  <= '0';
   
        wait for 10 ns;
        s_d  <= '1';
        wait for 10 ns;
        s_d  <= '0';
        wait for 10 ns;
        s_d  <= '1';
        wait for 10 ns;
        s_d  <= '0';
        --/d sekv
        
        report "Stimulus process finished" severity note;
        wait;
        
    end process p_stimulus;    
end Behavioral;