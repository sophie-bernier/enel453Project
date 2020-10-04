library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_2BUS8_TO1_BUS8 is
port ( in1     : in  std_logic_vector(7 downto 0);
       in2     : in  std_logic_vector(7 downto 0);
       s       : in  std_logic;
       mux_out : out std_logic_vector(7 downto 0) -- notice no semi-colon 
      );
end MUX_2BUS8_TO1_BUS8; -- can also be written as "end entity;" or just "end;"

architecture BEHAVIOR of MUX_2BUS8_TO1_BUS8 is
   begin
      with s select
         mux_out <= in1 when '0', -- when s is '0' then mux_out becomes in1
                    in2 when others;

end BEHAVIOR; -- can also be written as "end;"
