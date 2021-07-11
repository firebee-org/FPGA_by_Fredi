puts make_datetime.tcl

# Make datetime.vhd package from Tcl script

# Current date, time, and seconds since epoch
# Array index                                            0  1  2  3  4  5  6
set datetime_arr [clock format [clock seconds] -format {%Y %m %d %H %M %S %s}]

# Write VHDL package
set filename datetime.vhd
set file [open $filename w]
puts $file "library ieee;"
puts $file "use ieee.std_logic_1164.all;"
puts $file ""
puts $file "package datetime is"
puts $file "    -- Date information"
puts $file "    constant YEAR_INT       : integer                        := [lindex $datetime_arr 0];"
puts $file "    constant YEAR_HEX       : std_ulogic_vector(15 downto 0) := X\"[lindex $datetime_arr 0]\";"
puts $file "    constant MONTH_INT      : integer                        := [lindex $datetime_arr 1];"
puts $file "    constant MONTH_HEX      : std_ulogic_vector(7 downto 0)  := X\"[lindex $datetime_arr 1]\";"
puts $file "    constant DAY_INT        : integer                        := [lindex $datetime_arr 2];"
puts $file "    constant DAY_HEX        : std_ulogic_vector(7 downto 0)  := X\"[lindex $datetime_arr 2]\";"
puts $file "    constant DATE_HEX_DMY   : std_ulogic_vector(31 downto 0) := DAY_HEX & MONTH_HEX & YEAR_HEX;"
puts $file "    constant DATE_HEX_YMD   : std_ulogic_vector(31 downto 0) := YEAR_HEX & MONTH_HEX & DAY_HEX;"
puts $file "    -- Time information"
puts $file "    constant HOUR_INT       : integer                       := [lindex $datetime_arr 3];"
puts $file "    constant HOUR_HEX       : std_ulogic_vector(7 downto 0) := X\"[lindex $datetime_arr 3]\";"
puts $file "    constant MINUTE_INT     : integer                       := [lindex $datetime_arr 4];"
puts $file "    constant MINUTE_HEX     : std_ulogic_vector(7 downto 0) := X\"[lindex $datetime_arr 4]\";"
puts $file "    constant SECOND_INT     : integer                       := [lindex $datetime_arr 5];"
puts $file "    constant SECOND_HEX     : std_ulogic_vector(7 downto 0) := X\"[lindex $datetime_arr 5]\";"
puts $file "    constant TIME_HEX       : std_ulogic_vector(31 downto 0):= X\"00\" & HOUR_HEX & MINUTE_HEX & SECOND_HEX;"
puts $file "    -- Miscellaneous information"
puts $file "    constant EPOCH_INT      : integer := [lindex $datetime_arr 6];  -- Seconds since 1970-01-01_00:00:00"
puts $file "end package;"
close $file
