----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:59:54 04/15/2017 
-- Design Name: 
-- Module Name:    reg_q - Behavioral 
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

entity reg_q is
 Port ( mul : in  STD_LOGIC_VECTOR (15 downto 0);
			  left_serial_inp : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           load : in  STD_LOGIC;
           shift : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           lsb_q : out  STD_LOGIC;
           product_lsb : inout  STD_LOGIC_VECTOR (15 downto 0));
end reg_q;

architecture Behavioral of reg_q is
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
		myaliDFF: aliDFF port map (tmpd,clk,reset,tmp(15));
		dffq: for n in 14 downto 0 generate
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
				product_lsb <= "0000000000000000";
				init <= "0000000000000000";
				lsb_q <= '0';
			elsif rising_edge(clk) then
				if load = '1' then
					lsb_q <= product_lsb(0);
					product_lsb <= mul;
					init <= mul;
				elsif shift = '1' then
					lsb_q <= tmp(0);
					product_lsb <= tmp;
					init <= tmp;
				end if;
			end if;
		end process;

end Behavioral;

