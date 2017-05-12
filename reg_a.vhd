----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:59:22 04/15/2017 
-- Design Name: 
-- Module Name:    reg_a - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reg_a is
    Port ( sum : in  STD_LOGIC_VECTOR (15 downto 0);
		   left_serial_inp : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           load : in  STD_LOGIC;
           shift : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           lsb_a : out  STD_LOGIC;
           product_msb : inOUT  STD_LOGIC_VECTOR (15 downto 0));
end reg_a;

architecture Behavioral of reg_a is
	component aliDFF
	    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           q : out  STD_LOGIC);
	end component;
	signal init,tmp,tmpdg: std_logic_vector(15 downto 0); 
	signal tmpd: std_logic; 
	begin		
		tmpd <= (not(shift) and init(15)) xor (left_serial_inp and shift);
		myaliDFF : aliDFF port map (tmpd,clk,reset,tmp(15));
		dffa: for n in 14 downto 0 generate
		tmpdg(n) <= (not(shift) and init(n)) xor (tmp(n+1) and shift);
		myaliDFF: aliDFF
			port map (
				tmpdg(n),
				clk,
				reset,
				tmp(n)
			);			
		end generate;
		SEQ:process(clk,reset,load,shift)
		begin
			if reset = '1' then
				product_msb <= "0000000000000000";
				init <= "0000000000000000";
				lsb_a <= '0';
			elsif rising_edge(clk) then
				if load = '1' then
					lsb_a <= product_msb(0);
					product_msb <= sum;
					init <= sum;
				elsif shift = '1' then
					lsb_a <= product_msb(0);
					product_msb <= tmp;
					init <= tmp;
				end if;
			end if;
		end process;
		
end Behavioral;

