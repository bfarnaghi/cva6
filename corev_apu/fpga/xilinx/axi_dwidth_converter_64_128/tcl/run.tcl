set partNumber $::env(XILINX_PART)
set boardName  $::env(XILINX_BOARD)
set ipName axi_dwidth_converter_64_128

create_project $ipName . -force -part $partNumber
set_property board_part $boardName [current_project]

create_ip -name axi_dwidth_converter -vendor xilinx.com -library ip -module_name $ipName

set_property -dict [list CONFIG.SI_DATA_WIDTH {64} CONFIG.SI_ID_WIDTH {5} CONFIG.MI_DATA_WIDTH {128} CONFIG.FIFO_MODE {2}] [get_ips $ipName]

generate_target all [get_ips $ipName]
create_ip_run [get_ips $ipName]
launch_run ${ipName}_synth_1
wait_on_run ${ipName}_synth_1
