library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity prio_encoder_16_4 is
  port (
    input : in std_logic_vector(15 downto 0);
    index : out std_logic_vector(3 downto 0);
    valid : out std_logic
  );
end entity;

architecture arch of prio_encoder_16_4 is
begin
  prio_encode: process(input)
  begin
    if input(15) = '1' then
      index <= "1111";
      valid <= '1';
    elsif input(14) = '1' then
      index <= "1110";
      valid <= '1';
    elsif input(13) = '1' then
      index <= "1101";
      valid <= '1';
    elsif input(12) = '1' then
      index <= "1100";
      valid <= '1';
    elsif input(11) = '1' then
      index <= "1011";
      valid <= '1';
    elsif input(10) = '1' then
      index <= "1010";
      valid <= '1';
    elsif input(9) = '1' then
      index <= "1001";
      valid <= '1';
    elsif input(8) = '1' then
      index <= "1000";
      valid <= '1';
    elsif input(7) = '1' then
      index <= "0111";
      valid <= '1';
    elsif input(6) = '1' then
      index <= "0110";
      valid <= '1';
    elsif input(5) = '1' then
      index <= "0101";
      valid <= '1';
    elsif input(4) = '1' then
      index <= "0100";
      valid <= '1';
    elsif input(3) = '1' then
      index <= "0011";
      valid <= '1';
    elsif input(2) = '1' then
      index <= "0010";
      valid <= '1';
    elsif input(1) = '1' then
      index <= "0001";
      valid <= '1';
    elsif input(0) = '1' then
      index <= "0000";
      valid <= '1';
    else
      valid <= '0';
    end if;

  end process;
end architecture;
