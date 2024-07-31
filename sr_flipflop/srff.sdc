create_clock -name clk -period 2 -waveform {0 1} [get_ports "clk"]
set_clock_transition -rise 0.1 [get_clocks "clk"]
set_clock_transition -fall 0.1 [get_clocks "clk"]
set_clock_uncertainty 0.01 [get_ports "clk"]
set_input_delay -max 0.8 [get_ports "rst"] -clock [get_clocks "clk"]
set_input_delay -max 0.8 [get_ports "sr"] -clock [get_clocks "clk"]
set_output_delay -max 0.8 [get_ports "q"] -clock [get_clocks "clk"]
set_output_delay -max 0.8 [get_ports "qb"] -clock [get_clocks "clk"]

