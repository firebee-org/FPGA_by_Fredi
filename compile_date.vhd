library ieee;
use ieee.std_logic_1164.all;
use work.datetime.all;

entity compile_date is
    port
    (
        datetime    : out std_ulogic_vector(31 downto 0)
    );
end entity compile_date;

architecture rtl of compile_date is
begin
    datetime <= work.datetime.DATE_HEX_DMY;
end architecture rtl;