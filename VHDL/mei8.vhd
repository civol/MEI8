library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity v95v95v58v840v95e is
   port (
      clk: in std_logic;
      rst: in std_logic;
      ack: in std_logic;
      iq0: in std_logic;
      iq1: in std_logic;
      req: out std_logic;
      rwb: out std_logic;
      addr: out std_logic_vector(7 downto 0);
      dbus: inout std_logic_vector(7 downto 0)
   );
end v95v95v58v840v95e;

architecture v95v95v58v840v95a of v95v95v58v840v95e is

   component v95v95v58v840v58v58progv58v840v95e
      port(
         addr: in std_logic_vector(7 downto 0);
         instr: out std_logic_vector(7 downto 0)
      );
   end component;

   component v95v95v58v840v58v58aluv58v840v95e
      port(
         opr: in std_logic_vector(3 downto 0);
         x: in std_logic_vector(7 downto 0);
         y: in std_logic_vector(7 downto 0);
         z: out std_logic_vector(7 downto 0);
         zf: out std_logic;
         cf: out std_logic;
         sf: out std_logic;
         vvf: out std_logic
      );
   end component;

   signal iov95req: std_logic;
   signal iov95rwb: std_logic;
   signal iov95done: std_logic;
   signal iov95rv95done: std_logic;
   signal iov95out: std_logic_vector(7 downto 0);
   signal iov95in: std_logic_vector(7 downto 0);
   signal data: std_logic_vector(7 downto 0);
   signal a: std_logic_vector(7 downto 0);
   signal b: std_logic_vector(7 downto 0);
   signal c: std_logic_vector(7 downto 0);
   signal d: std_logic_vector(7 downto 0);
   signal e: std_logic_vector(7 downto 0);
   signal f: std_logic_vector(7 downto 0);
   signal g: std_logic_vector(7 downto 0);
   signal h: std_logic_vector(7 downto 0);
   signal zf: std_logic;
   signal cf: std_logic;
   signal sf: std_logic;
   signal vvf: std_logic;
   signal ir: std_logic_vector(7 downto 0);
   signal pc: std_logic_vector(7 downto 0);
   signal s: std_logic_vector(7 downto 0);
   signal dst: std_logic_vector(2 downto 0);
   signal src0: std_logic_vector(7 downto 0);
   signal src1: std_logic_vector(7 downto 0);
   signal branch: std_logic;
   signal cc: std_logic;
   signal wr: std_logic;
   signal wf: std_logic;
   signal ld: std_logic;
   signal st: std_logic;
   signal iqv95calc: std_logic;
   signal calc: std_logic;
   signal init: std_logic;
   signal npc: std_logic_vector(7 downto 0);
   signal nbr: std_logic;
   signal iqv95chk: std_logic;
   signal v58161v58v58v580: std_logic_vector(1 downto 0);
   signal v58161v58v58v581: std_logic_vector(1 downto 0);
   signal v58162v58v58v582: std_logic_vector(3 downto 0);
   signal v58162v58v58v583: std_logic_vector(3 downto 0);
   signal v58163v58v58v584: std_logic_vector(7 downto 0);
   signal v58163v58v58v585: std_logic_vector(7 downto 0);
   signal v58163v58v58v586: std_logic;
   signal v94v960: std_logic_vector(3 downto 0);
   signal v94v961: std_logic_vector(7 downto 0);
   signal v94v962: std_logic_vector(7 downto 0);
   signal v94v963: std_logic_vector(7 downto 0);
   signal v94v964: std_logic;
   signal v94v965: std_logic;
   signal v94v966: std_logic;
   signal v94v967: std_logic;
   signal v94v968: std_logic_vector(7 downto 0);
   signal v94v969: std_logic_vector(7 downto 0);
begin
   prog: v95v95v58v840v58v58progv58v840v95e
      port map(
         addr => v94v969,
         instr => v94v968
      );
   alu: v95v95v58v840v58v58aluv58v840v95e
      port map(
         opr => v94v960,
         x => v94v961,
         y => v94v962,
         z => v94v963,
         zf => v94v964,
         cf => v94v965,
         sf => v94v966,
         vvf => v94v967
      );
   v94v969 <= pc;

   process (a, ir, b, c, d, e, f, g, h, v58163v58v58v584, v58163v58v58v585, zf, cf, sf, vvf, v58163v58v58v586, iqv95calc, src0, src1, pc, cc)
      variable v37v9680: std_logic_vector(7 downto 0);
      variable v37v96116: std_logic_vector(7 downto 0);
      variable v37v96145: std_logic;
   begin
      branch <= '0';
      ld <= '0';
      st <= '0';
      wr <= '1';
      wf <= '0';
      dst <= "000";
      iov95out <= a;
      v94v960 <= "1111";
      v94v961 <= "00000000";
      v94v962 <= "00000000";
      case ir((5) downto (3)) is
      when "000" =>
         v58163v58v58v584 <= a;
      when "001" =>
         v58163v58v58v584 <= b;
      when "010" =>
         v58163v58v58v584 <= c;
      when "011" =>
         v58163v58v58v584 <= d;
      when "100" =>
         v58163v58v58v584 <= e;
      when "101" =>
         v58163v58v58v584 <= f;
      when "110" =>
         v58163v58v58v584 <= g;
      when others =>
         v58163v58v58v584 <= h;
      end case;
      v37v9680 := v58163v58v58v584;
      src0 <= v37v9680;
      case ir((2) downto (0)) is
      when "000" =>
         v58163v58v58v585 <= a;
      when "001" =>
         v58163v58v58v585 <= b;
      when "010" =>
         v58163v58v58v585 <= c;
      when "011" =>
         v58163v58v58v585 <= d;
      when "100" =>
         v58163v58v58v585 <= e;
      when "101" =>
         v58163v58v58v585 <= f;
      when "110" =>
         v58163v58v58v585 <= g;
      when others =>
         v58163v58v58v585 <= h;
      end case;
      v37v96116 := v58163v58v58v585;
      src1 <= v37v96116;
      case ir((5) downto (3)) is
      when "000" =>
         v58163v58v58v586 <= '1';
      when "001" =>
         v58163v58v58v586 <= zf;
      when "010" =>
         v58163v58v58v586 <= cf;
      when "011" =>
         v58163v58v58v586 <= sf;
      when "100" =>
         v58163v58v58v586 <= vvf;
      when "101" =>
         v58163v58v58v586 <= (not zf);
      when others =>
         v58163v58v58v586 <= '0';
      end case;
      v37v96145 := v58163v58v58v586;
      cc <= v37v96145;
      if ((iqv95calc = '1')) then
         v94v960 <= "0010";
         v94v961 <= h;
         v94v962 <= "00000000";
      else
         if ((ir((7) downto (0)) = "00000000")) then
            wr <= '0';
         elsif ((ir((7) downto (6)) = "00")) then
            if ((ir((5) downto (3)) = ir((2) downto (0)))) then
               v94v960 <= "1111";
               v94v961 <= "00000000";
               v94v962 <= "00000000";
            else
               v94v960 <= "0111";
               v94v961 <= src0;
            end if;
            dst <= ir((2) downto (0));
         elsif ((ir((7) downto (6)) = "01")) then
            wf <= '1';
            if ((ir((6) downto (4)) = "101")) then
               dst <= ir((2) downto (0));
            end if;
            v94v960 <= "0" & ir((5) downto (3));
            v94v961 <= a;
            v94v962 <= src1;
         elsif ((ir((7) downto (3)) = "10000")) then
            wr <= '0';
            wf <= '1';
            v94v960 <= "0001";
            v94v961 <= a;
            v94v962 <= src1;
         elsif ((ir((7) downto (3)) = "10001")) then
            ld <= '1';
            dst <= ir((2) downto (0));
         elsif ((ir((7) downto (3)) = "10010")) then
            st <= '1';
            wr <= '0';
            case ir((2) downto (0)) is
            when "000" =>
               iov95out <= a;
            when "001" =>
               iov95out <= b;
            when "010" =>
               iov95out <= c;
            when "011" =>
               iov95out <= d;
            when "100" =>
               iov95out <= e;
            when "101" =>
               iov95out <= f;
            when "110" =>
               iov95out <= g;
            when "111" =>
               iov95out <= h;
            when others =>
            end case;
         elsif ((ir((7) downto (3)) = "10011")) then
            branch <= '1';
            v94v960 <= "0010";
            v94v961 <= src1;
         elsif ((ir((7) downto (4)) = "1010")) then
            v94v960 <= "0111";
            v94v961 <= ("0000") & (ir((3) downto (0)));
         elsif ((ir((7) downto (4)) = "1011")) then
            v94v960 <= "0111";
            v94v961 <= (ir((3) downto (0))) & (a((3) downto (0)));
         elsif ((ir((7) downto (0)) = "11110110")) then
            branch <= '1';
            v94v960 <= "0111";
            v94v961 <= "11111100";
         elsif ((ir((7) downto (3)) = "11110")) then
            wf <= '1';
            v94v960 <= ("1") & (ir((2) downto (0)));
            v94v961 <= a;
         elsif ((ir((7) downto (2)) = "111110")) then
            st <= ir(0);
            ld <= (not ir(0));
            v94v960 <= "00" & ("1") & (ir((1) downto (1)));
            v94v961 <= g;
            dst <= "110";
         elsif ((ir((7) downto (1)) = "1111110")) then
            branch <= ir(0);
            st <= (not ir(0));
            ld <= ir(0);
            v94v960 <= "00" & ("1") & ((not ir((0) downto (0))));
            v94v961 <= h;
            dst <= "111";
            iov95out <= pc;
         elsif ((ir((7) downto (6)) = "11")) then
            branch <= cc;
            wr <= '0';
            v94v960 <= "0000";
            v94v961 <= pc;
            v94v962 <= (ir((2) downto (2))) & (ir((2) downto (2))) & (ir((2) downto (2))) & (ir((2) downto (2))) & (ir((2) downto (2))) & (ir((2) downto (2))) & (ir((1) downto (0)));
         end if;
      end if;
   end process;

   process (clk)
   begin
      if (rising_edge(clk)) then
            nbr <= '0';
            npc <= "00000000";
            if ((rst = '1')) then
               a <= "00000000";
               b <= "00000000";
               c <= "00000000";
               d <= "00000000";
               e <= "00000000";
               f <= "00000000";
               g <= "00000000";
               h <= "00000000";
               zf <= '0';
               cf <= '0';
               sf <= '0';
               vvf <= '0';
               nbr <= '0';
               npc <= "00000000";
               s <= "00000000";
            elsif ((init = '1')) then
               a <= "00000000";
               s <= "00000011";
            elsif ((iqv95calc = '1')) then
               s(7) <= '1';
               if ((iq1 = '1')) then
                  s(1) <= '0';
               else
                  s(0) <= '0';
               end if;
               h <= v94v963;
            elsif ((calc = '1')) then
               if ((wr = '1')) then
                  case dst is
                  when "000" =>
                     a <= v94v963;
                  when "001" =>
                     b <= v94v963;
                  when "010" =>
                     c <= v94v963;
                  when "011" =>
                     d <= v94v963;
                  when "100" =>
                     e <= v94v963;
                  when "101" =>
                     f <= v94v963;
                  when "110" =>
                     g <= v94v963;
                  when "111" =>
                     h <= v94v963;
                  when others =>
                  end case;
               end if;
               if ((wf = '1')) then
                  zf <= v94v964;
                  cf <= v94v965;
                  sf <= v94v966;
                  vvf <= v94v967;
               end if;
               if ((ir = "11110111")) then
                  s <= a;
                  a <= s;
               end if;
               if ((ir = "11110110")) then
                  s(7) <= '1';
               end if;
               if ((branch = '1')) then
                  npc <= v94v963;
                  nbr <= '1';
               end if;
            elsif ((iov95rv95done = '1')) then
               if ((branch = '1')) then
                  npc <= data;
                  nbr <= '1';
               elsif ((ir((7) downto (3)) = "10001")) then
                  case dst is
                  when "000" =>
                     a <= data;
                  when "001" =>
                     b <= data;
                  when "010" =>
                     c <= data;
                  when "011" =>
                     d <= data;
                  when "100" =>
                     e <= data;
                  when "101" =>
                     f <= data;
                  when "110" =>
                     g <= data;
                  when "111" =>
                     h <= data;
                  when others =>
                  end case;
               else
                  a <= data;
               end if;
            end if;
      end if;
   end process;

   process (clk)
   begin
      if (rising_edge(clk)) then
            if ((rst = '1')) then
               v58161v58v58v580 <= "00";
            else
               v58161v58v58v580 <= v58161v58v58v581;
            end if;
      end if;
   end process;

   process (iov95rwb, iov95out, dbus, v58161v58v58v580, g)
   begin
      iov95done <= '0';
      req <= '0';
      rwb <= '0';
      addr <= "00000000";
      iov95rv95done <= '0';
      if ((iov95rwb = '1')) then
         dbus <= "ZZZZZZZZ";
      else
         dbus <= iov95out;
      end if;
      iov95in <= dbus;
      case v58161v58v58v580 is
      when "00" =>
      when "01" =>
         req <= '1';
         rwb <= iov95rwb;
         addr <= g;
      when "10" =>
         iov95done <= '1';
         iov95rv95done <= iov95rwb;
      when others =>
      end case;
   end process;

   process (v58161v58v58v580, iov95req, ack)
   begin
      case v58161v58v58v580 is
      when "00" =>
         if ((iov95req = '1')) then
            v58161v58v58v581 <= "01";
         else
            v58161v58v58v581 <= "00";
         end if;
      when "01" =>
         if ((ack = '1')) then
            v58161v58v58v581 <= "10";
         else
            v58161v58v58v581 <= "01";
         end if;
      when "10" =>
         v58161v58v58v581 <= "00";
      when others =>
         v58161v58v58v581 <= "00";
      end case;
   end process;

   process (clk)
   begin
      if (rising_edge(clk)) then
            if ((rst = '1')) then
               data <= "00000000";
            else
               case v58161v58v58v580 is
               when "00" =>
               when "01" =>
                  data <= iov95in;
               when "10" =>
               when others =>
               end case;
            end if;
      end if;
   end process;

   process (clk)
   begin
      if (rising_edge(clk)) then
            if ((rst = '1')) then
               v58162v58v58v582 <= "0000";
            else
               v58162v58v58v582 <= v58162v58v58v583;
            end if;
      end if;
   end process;

   process (v58162v58v58v582, ld, st)
   begin
      init <= '0';
      calc <= '0';
      iov95req <= '0';
      iov95rwb <= '1';
      iqv95calc <= '0';
      case v58162v58v58v582 is
      when "0000" =>
         init <= '1';
      when "0001" =>
      when "0010" =>
         calc <= '1';
         if (((ld or st) = '1')) then
            iov95req <= '1';
            iov95rwb <= ld;
         end if;
      when "0011" =>
      when "0100" =>
         iov95rwb <= ld;
      when "0101" =>
         iqv95calc <= '1';
         iov95req <= '1';
         iov95rwb <= '0';
      when "0110" =>
      when "0111" =>
      when others =>
      end case;
   end process;

   process (v58162v58v58v582, iqv95chk, branch, ld, st, iov95done, ir)
   begin
      case v58162v58v58v582 is
      when "0000" =>
         v58162v58v58v583 <= std_logic_vector(unsigned(v58162v58v58v582)+1);
      when "0001" =>
         v58162v58v58v583 <= std_logic_vector(unsigned(v58162v58v58v582)+1);
      when "0010" =>
         v58162v58v58v583 <= "0001";
         if ((iqv95chk = '1')) then
            v58162v58v58v583 <= "0101";
         end if;
         if ((branch = '1')) then
            v58162v58v58v583 <= "0011";
         end if;
         if ((((ld or st) and (not iov95done)) = '1')) then
            v58162v58v58v583 <= "0100";
         end if;
         if ((ir = "11111110")) then
            v58162v58v58v583 <= "0111";
         end if;
         if ((ir = "11111111")) then
            v58162v58v58v583 <= "0000";
         end if;
      when "0011" =>
         if ((iqv95chk = '1')) then
            v58162v58v58v583 <= "0101";
         else
            v58162v58v58v583 <= "0001";
         end if;
      when "0100" =>
         if ((branch = '1')) then
            v58162v58v58v583 <= "0011";
         else
            v58162v58v58v583 <= "0001";
         end if;
         if (((not iov95done) = '1')) then
            v58162v58v58v583 <= "0100";
         end if;
         if (((iov95done and iqv95chk) = '1')) then
            v58162v58v58v583 <= "0101";
         end if;
      when "0101" =>
         if ((iov95done = '1')) then
            v58162v58v58v583 <= "0110";
         else
            v58162v58v58v583 <= "0101";
         end if;
      when "0110" =>
         v58162v58v58v583 <= "0001";
      when "0111" =>
         if ((iqv95chk = '1')) then
            v58162v58v58v583 <= "0101";
         else
            v58162v58v58v583 <= "0111";
         end if;
      when others =>
         v58162v58v58v583 <= "0000";
      end case;
   end process;

   process (clk)
   begin
      if (rising_edge(clk)) then
            if ((rst = '1')) then
               pc <= "00000000";
               ir <= "00000000";
               iqv95chk <= '0';
            else
               case v58162v58v58v582 is
               when "0000" =>
                  pc <= "00000000";
                  ir <= "00000000";
                  iqv95chk <= '0';
               when "0001" =>
                  ir <= v94v968;
                  pc <= std_logic_vector(unsigned(pc)+1);
                  iqv95chk <= ((iq0 and s(0)) or (iq1 and s(1)));
               when "0010" =>
               when "0011" =>
                  if ((nbr = '1')) then
                     pc <= std_logic_vector(unsigned(npc)-1);
                  end if;
               when "0100" =>
               when "0101" =>
               when "0110" =>
                  pc <= "11111000";
               when "0111" =>
                  iqv95chk <= ((iq0 and s(0)) or (iq1 and s(1)));
               when others =>
               end case;
            end if;
      end if;
   end process;

end v95v95v58v840v95a;

