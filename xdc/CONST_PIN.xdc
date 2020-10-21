set_property PACKAGE_PIN L16 [get_ports CLK]
set_property PACKAGE_PIN D18 [get_ports {LED[3]}]
set_property PACKAGE_PIN G14 [get_ports {LED[2]}]
set_property PACKAGE_PIN M15 [get_ports {LED[1]}]
set_property PACKAGE_PIN M14 [get_ports {LED[0]}]

set_property PACKAGE_PIN R18 [get_ports RST]

set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports CLK]
set_property IOSTANDARD LVCMOS33 [get_ports RST]

create_clock -period 8.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports CLK]
