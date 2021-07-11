## Generated SDC file "D:/Download/firebee1.out.sdc"

## Copyright (C) 1991-2010 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

## DATE    "Tue Jun 02 13:09:12 2020"

##
## DEVICE  "EP3C40F484C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************


create_clock -name {MAIN_CLK} -period 30.303 -waveform { 0.000 15.151 } [get_ports {MAIN_CLK}]

#create_generated_clock  -multiply_by 4                    -name {CLK_DDR[0]} -phase 240  -source [get_ports {MAIN_CLK}] [get_pins inst12|altpll_component|auto_generated|pll1|clk[0]]
#create_generated_clock  -multiply_by 4                    -name {CLK_DDR[1]} -phase 0    -source [get_ports {MAIN_CLK}] [get_pins inst12|altpll_component|auto_generated|pll1|clk[1]]
#create_generated_clock  -multiply_by 4                    -name {CLK_DDR[2]} -phase 180  -source [get_ports {MAIN_CLK}] [get_pins inst12|altpll_component|auto_generated|pll1|clk[2]]
#create_generated_clock  -multiply_by 4                    -name {CLK_DDR[3]} -phase 105  -source [get_ports {MAIN_CLK}] [get_pins inst12|altpll_component|auto_generated|pll1|clk[3]]
#create_generated_clock  -multiply_by 2                    -name {CLK_DDR[4]} -phase 270  -source [get_ports {MAIN_CLK}] [get_pins inst12|altpll_component|auto_generated|pll1|clk[4]]

#create_generated_clock  -multiply_by 16   -divide_by 11   -name {CLK_48M}              -source [get_ports {MAIN_CLK}] [get_pins inst|altpll_component|auto_generated|pll1|clk[0]]
#create_generated_clock  -multiply_by 16   -divide_by 33   -name {CLK_FDC}              -source [get_ports {MAIN_CLK}] [get_pins inst|altpll_component|auto_generated|pll1|clk[1]]
#create_generated_clock  -multiply_by 32   -divide_by 43   -name {CLK_24M}              -source [get_ports {MAIN_CLK}] [get_pins inst|altpll_component|auto_generated|pll1|clk[2]]

#create_generated_clock  -multiply_by 25   -divide_by 33   -name {CLK_25M}              -source [get_ports {MAIN_CLK}] [get_pins inst13|altpll_component|auto_generated|pll1|clk[0]]
#create_generated_clock  -multiply_by 2    -divide_by 33   -name {CLK_2M}               -source [get_ports {MAIN_CLK}] [get_pins inst13|altpll_component|auto_generated|pll1|clk[1]]
#create_generated_clock  -multiply_by 1    -divide_by 66   -name {CLK_500k}             -source [get_ports {MAIN_CLK}] [get_pins inst13|altpll_component|auto_generated|pll1|clk[2]]
#create_generated_clock  -multiply_by 25   -divide_by 336  -name {CLK_2M4}              -source [get_ports {MAIN_CLK}] [get_pins inst13|altpll_component|auto_generated|pll1|clk[3]]

#create_generated_clock  -multiply_by 2                    -name {CLK_PIXEL}            -source [get_pins inst|altpll_component|auto_generated|pll1|clk[0]] [get_pins inst22|altpll_component|auto_generated|pll1|clk[0]]

# see if Quartus finds even more clocks

derive_pll_clocks -use_net_name
derive_clocks -period 30.303

#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

derive_clock_uncertainty


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -clock {MAIN_CLK} -max 4 [remove_from_collection [all_inputs] [get_ports {MAIN_CLK}]]


#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************

set_false_path -from [get_keepers *0hh1*d_wrptr*] -to [get_keepers *0hh1*dffe13a*]
set_false_path -from [get_keepers *0hh1*rdptr_g\[*] -to [get_keepers *0hh1*dffe18*]
set_false_path -from [get_keepers *3fh1*d_wrptr*] -to [get_keepers *3fh1*dffe13a*]
set_false_path -from [get_keepers *3fh1*rdptr_g\[*] -to [get_keepers *3fh1*15\|dffe16a\[*]

set_false_path -from MAIN_CLK -to altpll4:inst22|altpll:altpll_component|altpll_r4n2:auto_generated|clk[0]

#set_false_path -from [get_keepers {*rdptr_g*}] -to [get_keepers {*ws_dgrp|dffpipe_id9:dffpipe17|dffe18a*}]
#set_false_path -from [get_keepers {*delayed_wrptr_g*}] -to [get_keepers {*rs_dgwp|dffpipe_hd9:dffpipe12|dffe13a*}]
#set_false_path -from [get_keepers {*rdptr_g*}] -to [get_keepers {*ws_dgrp|dffpipe_kd9:dffpipe15|dffe16a*}]
#set_false_path -from [get_keepers {*delayed_wrptr_g*}] -to [get_keepers {*rs_dgwp|dffpipe_jd9:dffpipe12|dffe13a*}]
#set_false_path -from [get_keepers {*rdptr_g*}] -to [get_keepers {*ws_dgrp|dffpipe_te9:dffpipe20|dffe21a*}]


#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************

# TPD
set_max_delay -from [all_inputs] -to [all_outputs] 1 

# TSU
set_max_delay -from [all_inputs] -to [all_registers] 1

# TCO
set_max_delay -from [all_registers] -to [all_outputs] 1 

set_max_delay -from [get_keepers FB_AD*] -to [get_keepers BA*] 5
set_max_delay -from [get_keepers FB_AD*] -to [get_keepers VA*] 5
set_max_delay -from [get_keepers FB_AD*] -to [get_keepers nVRA*] 5


#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

