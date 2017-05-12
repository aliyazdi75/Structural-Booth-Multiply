--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   01:53:49 05/12/2017
-- Design Name:   
-- Module Name:   C:/Users/Ali Yazdi/Desktop/Ali Yazdi/mul/mtb.vhd
-- Project Name:  mul
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multiply
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY mtb IS
END mtb;
 
ARCHITECTURE behavior OF mtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multiply
    PORT(
         multiplicand : IN  std_logic_vector(15 downto 0);
         multiplier : IN  std_logic_vector(15 downto 0);
         g : IN  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic;
         finish : OUT  std_logic;
         mulout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal multiplicand : std_logic_vector(15 downto 0) := (others => '0');
   signal multiplier : std_logic_vector(15 downto 0) := (others => '0');
   signal g : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal finish : std_logic;
   signal mulout : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiply PORT MAP (
          multiplicand => multiplicand,
          multiplier => multiplier,
          g => g,
          reset => reset,
          clk => clk,
          finish => finish,
          mulout => mulout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		multiplicand <= "0000000000001111";
		multiplier <= "0000000000001111";
		g <= '0';
		reset <= '1';
      wait for 100 ns;	
		g <= '1';
		reset <= '0';      
		wait for 100 ns;	

      wait for clk_period*10;
      -- insert stimulus here 

      wait;
   end process;

END;
