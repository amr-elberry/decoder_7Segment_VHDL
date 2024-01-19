----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:14:36 10/17/2023 
-- Design Name: 
-- Module Name:    decoder - Behavioral 
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

entity decoder is
port(
decoder_in : in std_logic_vector (3 downto 0);
decoder_out : out std_logic_vector (7 downto 0)
);
end decoder;


architecture struct of decoder is
--abcdefgh
begin
decoder_out <= "11111010" when decoder_in = "0000" else
  "01100000" when decoder_in = "0001" else
  "11011010" when decoder_in = "0010" else
  "11110010" when decoder_in = "0011" else
  "01100110" when decoder_in = "0100" else
  "10110110" when decoder_in = "0101" else
  "10111110" when decoder_in = "0110" else
  "11100000" when decoder_in = "0111" else
 "11111110" when decoder_in = "1000" else
 "11110110" when decoder_in = "1001" else "00000000";
end struct;

