library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity v95v95v58v840v58v58aluv58v840v95e is
   port (
      opr: in std_logic_vector(3 downto 0);
      x: in std_logic_vector(7 downto 0);
      y: in std_logic_vector(7 downto 0);
      z: out std_logic_vector(7 downto 0);
      zf: out std_logic;
      cf: out std_logic;
      sf: out std_logic;
      vvf: out std_logic
   );
end v95v95v58v840v58v58aluv58v840v95e;

architecture v95v95v58v840v58v58aluv58v840v95a of v95v95v58v840v58v58aluv58v840v95e is

   component v95v95v58v840v58v58aluv58v840v58v58addv58v840v95e
      port(
         x: in std_logic_vector(7 downto 0);
         y: in std_logic_vector(7 downto 0);
         cin: in std_logic;
         z: out std_logic_vector(8 downto 0)
      );
   end component;

   signal v58166: std_logic_vector(7 downto 0);
   signal v58193v58v58v58167: std_logic;
   signal v94v96638: std_logic_vector(7 downto 0);
   signal v94v96639: std_logic_vector(7 downto 0);
   signal v94v96640: std_logic;
   signal v94v96641: std_logic_vector(8 downto 0);
begin
   add: v95v95v58v840v58v58aluv58v840v58v58addv58v840v95e
      port map(
         x => v94v96638,
         y => v94v96639,
         cin => v94v96640,
         z => v94v96641
      );
   z <= v58166;

   process (v58166, v58193v58v58v58167, opr, x, y, v94v96641)
      variable v37v96131: std_logic;
      variable v37v96658: std_logic_vector(8 downto 0);
      variable v37v96664: std_logic_vector(7 downto 0);
      variable v37v96134: std_logic;
      variable v37v96657: std_logic_vector(8 downto 0);
      variable v37v96656: std_logic_vector(8 downto 0);
      variable v37v96655: std_logic_vector(8 downto 0);
      variable v37v96653: std_logic_vector(8 downto 0);
   begin
      cf <= '0';
      vvf <= '0';
      case (v58166 = "00000000") is
      when false =>
         v58193v58v58v58167 <= '0';
      when others =>
         v58193v58v58v58167 <= '1';
      end case;
      v37v96131 := v58193v58v58v58167;
      zf <= v37v96131;
      sf <= v58166(7);
      v94v96638 <= "00000000";
      v94v96639 <= "00000000";
      v94v96640 <= '0';
      case opr is
      when "0000" =>
         v94v96638 <= x;
         v94v96639 <= y;
         v94v96640 <= '0';
         v37v96658 := v94v96641;
         v37v96664 := v37v96658((7) downto (0));
         v37v96134 := v37v96658(8);
         v58166 <= v37v96664;
         cf <= v37v96134;
         vvf <= ((((not x(7)) and (not y(7))) and v58166(7)) or ((x(7) and y(7)) and (not v58166(7))));
      when "0001" =>
         v94v96638 <= x;
         v94v96639 <= (not y);
         v94v96640 <= '1';
         v37v96657 := v94v96641;
         v37v96664 := v37v96657((7) downto (0));
         v37v96134 := v37v96657(8);
         v58166 <= v37v96664;
         cf <= v37v96134;
         vvf <= ((((not x(7)) and y(7)) and v58166(7)) or ((x(7) and (not y(7))) and (not v58166(7))));
      when "0010" =>
         v94v96638 <= x;
         v94v96639 <= "00000000";
         v94v96640 <= '1';
         v37v96656 := v94v96641;
         v37v96664 := v37v96656((7) downto (0));
         v37v96134 := v37v96656(8);
         v58166 <= v37v96664;
         cf <= v37v96134;
         vvf <= ((((not x(7)) and (not y(7))) and v58166(7)) or ((x(7) and y(7)) and (not v58166(7))));
      when "0011" =>
         v94v96638 <= x;
         v94v96639 <= "11111111";
         v94v96640 <= '0';
         v37v96655 := v94v96641;
         v37v96664 := v37v96655((7) downto (0));
         v37v96134 := v37v96655(8);
         v58166 <= v37v96664;
         cf <= v37v96134;
         vvf <= ((((not x(7)) and (not y(7))) and v58166(7)) or ((x(7) and y(7)) and (not v58166(7))));
      when "0100" =>
         v58166 <= (x and y);
      when "0101" =>
         v58166 <= (x or y);
      when "0110" =>
         v58166 <= (x xor y);
      when "0111" =>
         v58166 <= x;
      when "1000" =>
         v94v96638 <= (not x);
         v94v96639 <= "00000000";
         v94v96640 <= '1';
         v37v96653 := v94v96641;
         v37v96664 := v37v96653((7) downto (0));
         v37v96134 := v37v96653(8);
         v58166 <= v37v96664;
         cf <= v37v96134;
         vvf <= (x(7) and (not v58166(7)));
      when "1001" =>
         v58166 <= (not x);
      when "1010" =>
         v58166 <= std_logic_vector(shift_left(unsigned(x),1));
         cf <= x(7);
      when "1011" =>
         v58166 <= std_logic_vector(shift_right(unsigned(x),1));
         cf <= x(0);
      when "1100" =>
         v58166 <= (x(7)) & (x((7) downto (1)));
         cf <= x(0);
      when others =>
         v58166 <= "00000000";
      end case;
   end process;

end v95v95v58v840v58v58aluv58v840v95a;

