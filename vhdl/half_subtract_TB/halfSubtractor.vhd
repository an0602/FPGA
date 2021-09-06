-- Ayaz Noor
-- half subtractor VHDL code and Testbench code

library ieee;
use ieee.std_logic_1164.all;

entity halfSubtract is
port(
    a, b                : in    std_logic; 
    difference, borrow  : out   std_logic
);
end halfSubtract;

architecture dataflow of halfSubtract is
begin
    difference <= a xor b;
    borrow <= (not a) and b;
end dataflow;

-- Begin TestBench code
-----------------------

library ieee;
use ieee.std_logic_1164.all;

entity halfSubtract_TB is
end halfSubtract_TB;

architecture halfSubtract_TB2 of halfSubtract_TB is
component halfSubtract is
port(
    a, b                : in    std_logic; 
    difference, borrow  : out   std_logic
);
end component;

signal a, b                 :   std_logic :='0';
signal difference, borrow   :   std_logic;

begin

HSTB :   halfSubtract port map(a => a, b => b, difference => difference, borrow => borrow);

clk_stimulus    :   process(a,b)
begin
    a <= not a after 50ns;
    b <= not b after 100ns;
end process;    

end halfSubtract_TB2; 
