library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity v95v95v58v840v58v58aluv58v840v58v58addv58v840v95e is
   port (
      x: in std_logic_vector(7 downto 0);
      y: in std_logic_vector(7 downto 0);
      cin: in std_logic;
      z: out std_logic_vector(8 downto 0)
   );
end v95v95v58v840v58v58aluv58v840v58v58addv58v840v95e;

architecture v95v95v58v840v58v58aluv58v840v58v58addv58v840v95a of v95v95v58v840v58v58aluv58v840v58v58addv58v840v95e is

   signal v58194: std_logic_vector(0 downto 0);
begin
   z <= std_logic_vector(unsigned(std_logic_vector(unsigned(std_logic_vector(resize(unsigned(x),9)))+unsigned(y)))+unsigned(v58194));
   v58194(0) <= cin;

end v95v95v58v840v58v58aluv58v840v58v58addv58v840v95a;

