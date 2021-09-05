-- Created By Ayaz
-- And gate logic program

library IEEE; use IEEE.std_logic_1164.all;

entity and_logic_gate is
    port(   a, b:   in  std_logic ;
            y:      out std_logic );
end;

architecture synth of and_logic_gate is
begin
    y <= a and b;
end;                