----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:59:26 04/22/2017 
-- Design Name: 
-- Module Name:    controller - Behavioral 
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

entity controller is
    Port ( g : in  STD_LOGIC;
			  z : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  lsb_q : in  STD_LOGIC;
           init : out  STD_LOGIC;
           count : out  STD_LOGIC;
			  load_a : out STD_LOGIC;
			  load_q : out STD_LOGIC;
			  shift_a : out STD_LOGIC;
			  shift_q : out STD_LOGIC;
			  reset_a : out STD_LOGIC;
			  reset_q : out STD_LOGIC;
           reset_dff: out  STD_LOGIC;
           finish: out  STD_LOGIC);
end controller;

architecture Behavioral of controller is
   type state is (idle, mul0, mul10, lad, mul1, shf, mul2);
   signal current_state, next_state: state;
begin
	
	 SEQ: process(clk,reset)
   begin
      if (reset='1') then
         current_state <= idle;
      elsif rising_edge(clk) then
         current_state <= next_state;
      end if;
   end process;

   COMB: process(clk,current_state,g,z,lsb_q)
   begin
      case current_state is
         when idle =>
				finish <= '0';
				count <= '0';
			   reset_a <= '1';
			   reset_q <= '1';
            reset_dff <= '1';
				shift_a <= '0';
				shift_q <= '0';
				if rising_edge(clk) then
					if g='0' then
						next_state <= idle;
					else
						init <= '1';
						next_state <= mul0;
					end if;
				end if;
         when mul0 =>
				load_q <= '1';
				init <= '0';
				reset_q <= '0';
				reset_a <= '1';
				reset_dff <= '1';
				if rising_edge(clk) then
					next_state <= mul10;
				end if;
         when mul10 =>
				count <= '0';
				reset_a <= '0';
				reset_dff <= '0';
				load_q <= '0';
				if rising_edge(clk) then
					if lsb_q ='0' then
						reset_dff <= '1';
						next_state <= mul1;
					else
						load_a <= '1';
						reset_dff <= '0';
						next_state <= lad;
					end if;
				end if;
			when lad =>
				reset_dff <= '0';
				next_state <= mul1;
         when mul1 =>
				load_a <= '0';
				shift_a <= '1';
				if rising_edge(clk) then
					next_state <= shf;
				end if;
         when shf =>
				shift_a <= '0';
				shift_q <= '1';
				next_state <= mul2;
         when mul2 =>
				if rising_edge(clk) then
					shift_q <= '0';
					if z = '0' then
						next_state <= mul10;
						count <= '1';
					else
						finish <= '1';
						count <= '1';
						next_state <= idle;
					end if;
				end if;
      end case;
   end process;
end Behavioral;

