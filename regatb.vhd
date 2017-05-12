--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:23:55 05/05/2017
-- Design Name:   
-- Module Name:   C:/Users/Ali Yazdi/Desktop/Ali Yazdi/mul/regatb.vhd
-- Project Name:  mul
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: reg_a
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
 
ENTITY regatb IS
END regatb;
 
ARCHITECTURE behavior OF regatb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reg_a
    PORT(
         sum : IN  std_logic_vector(15 downto 0);
         left_serial_inp : IN  std_logic;
         clk : IN  std_logic;
         load : IN  std_logic;
         shift : IN  std_logic;
         reset : IN  std_logic;
         lsb_a : OUT  std_logic;
         product_msb : INOUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sum : std_logic_vector(15 downto 0) := (others => '0');
   signal left_serial_inp : std_logic := '0';
   signal clk : std_logic := '0';
   signal load : std_logic := '0';
   signal shift : std_logic := '0';
   signal reset : std_logic := '0';

	--BiDirs
   signal product_msb : std_logic_vector(15 downto 0);

 	--Outputs
   signal lsb_a : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg_a PORT MAP (
          sum => sum,
          left_serial_inp => left_serial_inp,
          clk => clk,
          load => load,
          shift => shift,
          reset => reset,
          lsb_a => lsb_a,
          product_msb => product_msb
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
			
      wait for clk_period*10;
		
		
      -- insert stimulus here 
		      wait for 5 ns;	
		sum<="0111011101110111";
		left_serial_inp<='1';
      
      load<='1';
      shift<='0';
      reset<='0';
      
      wait for clk_period;
		sum<="0111011101110111";
		left_serial_inp<='1';
      
      load<='0';
      shift<='1';
      reset<='0';
		wait for clk_period;
      sum<="0111011101110111";
		left_serial_inp<='1';
      
      load<='0';
      shift<='0';
      reset<='0';
		wait for clk_period;
      sum<="0111011101110111";
		left_serial_inp<='1';
      
      load<='0';
      shift<='0';
      reset<='0';
      
      
      
      wait;
   end process;

END;
