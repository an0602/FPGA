-- Ayaz Noor
-- One bit Adder VHDL architecture.
-- This is a Full Adder which has carry bits cin and Cout

library IEEE;
use IEEE.std_logic_1164.all;

--define outer box 
entity oneBitAdder is
    port(   a, b, cin   :   in   std_logic ;
            Sout, Cout  :   out   std_logic );
end;

architecture synth of oneBitAdder is 
begin            
    Sout <= a xor b xor cin;
    Cout <= (a and b) or (a and cin) or (b and cin);
end;    