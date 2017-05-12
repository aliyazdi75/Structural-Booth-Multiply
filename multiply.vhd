----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:09:06 04/15/2017 
-- Design Name: 
-- Module Name:    
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

entity 
multiply is
    Port ( multiplicand : in STD_LOGIC_VECTOR (15 downto 0);
           multiplier : in STD_LOGIC_VECTOR (15 downto 0);
			  g : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk : in STD_LOGIC;
			  finish : out STD_LOGIC;
			  mulout : out STD_LOGIC_VECTOR (31 downto 0));
end multiply;

architecture Behavioral of multiply is
	component reg_a 
    Port ( sum : in  STD_LOGIC_VECTOR (15 downto 0);
			  left_serial_inp : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           load : in  STD_LOGIC;
           shift : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           lsb_a : out  STD_LOGIC;
           product_msb : inOUT  STD_LOGIC_VECTOR (15 downto 0));
	end component;
	component reg_q
		Port ( mul : in  STD_LOGIC_VECTOR (15 downto 0);
			  left_serial_inp : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           load : in  STD_LOGIC;
           shift : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           lsb_q : out  STD_LOGIC;
           product_lsb : inout  STD_LOGIC_VECTOR (15 downto 0));
	end component;
	component ali16BFA
    Port ( a : in  STD_LOGIC_VECTOR (15 downto 0);
           b : in  STD_LOGIC_VECTOR (15 downto 0);
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (15 downto 0));
	end component;
	component aliDFF
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           q : out  STD_LOGIC);
	end component;
	component counter
    Port ( inp : in  STD_LOGIC_VECTOR (3 downto 0);
           init : in  STD_LOGIC;
           count : in  STD_LOGIC;
           z : out  STD_LOGIC;
           clk : in  STD_LOGIC);
	end component;
	component controller is
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
	end component;
	signal z,cout,q,lsb_a,lsb_q,init,count,load_a,load_q,shift_a,shift_q,reset_a,reset_q,reset_dff : STD_LOGIC;
	signal product_msb,product_lsb,sum,a,b : STD_LOGIC_VECTOR (15 downto 0);
begin

	b <= multiplicand;
	myreg_a:reg_a port map (sum,q,clk,load_a,shift_a,reset_a,lsb_a,product_msb);
	a <= product_msb;
	myfa:ali16BFA port map (a,b,'0',cout,sum);
	mydff:aliDFF port map (cout,clk,reset_dff,q);
	myreg_q:reg_q port map (multiplier,lsb_a,clk,load_q,shift_q,reset_q,lsb_q,product_lsb);
	mycounter:counter port map ("1111",init,count,z,clk);
	mycontroller:controller port map (g,z,reset,clk,lsb_q,init,count,load_a,load_q,shift_a,shift_q,reset_a,reset_q,
													reset_dff,finish);
	mulout <= product_msb & product_lsb;
	
end Behavioral;

