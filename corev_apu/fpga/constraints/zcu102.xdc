## BUTTONS
set_property -dict {PACKAGE_PIN AM13 IOSTANDARD LVCMOS33} [get_ports cpu_reset]


## clock check
create_clock -name sys_clk -period 10 [get_ports sys_clk_p]

set_property -dict {PACKAGE_PIN AC9}  [get_ports sys_clk_p]
set_property -dict {PACKAGE_PIN AC8}  [get_ports sys_clk_n]
## LEDs
set_property -dict {PACKAGE_PIN AG14 IOSTANDARD LVCMOS33} [get_ports {led[0]}]
set_property -dict {PACKAGE_PIN AF13 IOSTANDARD LVCMOS33} [get_ports {led[1]}]
set_property -dict {PACKAGE_PIN AE13 IOSTANDARD LVCMOS33} [get_ports {led[2]}]
set_property -dict {PACKAGE_PIN AJ14 IOSTANDARD LVCMOS33} [get_ports {led[3]}]
set_property -dict {PACKAGE_PIN AJ15 IOSTANDARD LVCMOS33} [get_ports {led[4]}]
set_property -dict {PACKAGE_PIN AH13 IOSTANDARD LVCMOS33} [get_ports {led[5]}]
set_property -dict {PACKAGE_PIN AH14 IOSTANDARD LVCMOS33} [get_ports {led[6]}]
set_property -dict {PACKAGE_PIN AL12 IOSTANDARD LVCMOS33} [get_ports {led[7]}]

## SWITCHES
set_property -dict {PACKAGE_PIN AN14 IOSTANDARD LVCMOS33} [get_ports {sw[0]}]
set_property -dict {PACKAGE_PIN AP14 IOSTANDARD LVCMOS33} [get_ports {sw[1]}]
set_property -dict {PACKAGE_PIN AM14 IOSTANDARD LVCMOS33} [get_ports {sw[2]}]
set_property -dict {PACKAGE_PIN AN13 IOSTANDARD LVCMOS33} [get_ports {sw[3]}]
set_property -dict {PACKAGE_PIN AN12 IOSTANDARD LVCMOS33} [get_ports {sw[4]}]
set_property -dict {PACKAGE_PIN AP12 IOSTANDARD LVCMOS33} [get_ports {sw[5]}]
set_property -dict {PACKAGE_PIN AL13 IOSTANDARD LVCMOS33} [get_ports {sw[6]}]
set_property -dict {PACKAGE_PIN AK13 IOSTANDARD LVCMOS33} [get_ports {sw[7]}]

## PL-UART channel 2
set_property -dict {PACKAGE_PIN E13 IOSTANDARD LVCMOS33} [get_ports tx]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS33} [get_ports rx]

## No fan control needed

## ETHERNET
set_property -dict {PACKAGE_PIN F25 IOSTANDARD LVCMOS33} [get_ports { eth_mdio }]; #MIO77_ENET_MDIO
set_property -dict {PACKAGE_PIN H25 IOSTANDARD LVCMOS33} [get_ports { eth_mdc }]; #MIO76_ENET_MDC
set_property -dict {PACKAGE_PIN A25 IOSTANDARD LVCMOS33} [get_ports { eth_txck }]; #MIO64_ENET_TX_CLK
set_property -dict {PACKAGE_PIN A26 IOSTANDARD LVCMOS33} [get_ports { eth_txd[0] }]; #MIO65_ENET_TX_D0
set_property -dict {PACKAGE_PIN A27 IOSTANDARD LVCMOS33} [get_ports { eth_txd[1] }]; #MIO66_ENET_TX_D1
set_property -dict {PACKAGE_PIN B25 IOSTANDARD LVCMOS33} [get_ports { eth_txd[2] }]; #MIO67_ENET_TX_D2
set_property -dict {PACKAGE_PIN B26 IOSTANDARD LVCMOS33} [get_ports { eth_txd[3] }]; #MIO68_ENET_TX_D3
set_property -dict {PACKAGE_PIN B27 IOSTANDARD LVCMOS33} [get_ports { eth_txctl }]; #MIO69_ENET_TX_CTRL
set_property -dict {PACKAGE_PIN C26 IOSTANDARD LVCMOS33} [get_ports { eth_rxck }]; #MIO70_ENET_RX_CLK
set_property -dict {PACKAGE_PIN C27 IOSTANDARD LVCMOS33} [get_ports { eth_rxd[0]}]; #MIO71_ENET_RX_D0
set_property -dict {PACKAGE_PIN E25 IOSTANDARD LVCMOS33} [get_ports { eth_rxd[1]}]; #MIO72_ENET_RX_D1
set_property -dict {PACKAGE_PIN H24 IOSTANDARD LVCMOS33} [get_ports { eth_rxd[2]}]; #MIO73_ENET_RX_D2
set_property -dict {PACKAGE_PIN G25 IOSTANDARD LVCMOS33} [get_ports { eth_rxd[3]}]; #MIO74_ENET_RX_D3
set_property -dict {PACKAGE_PIN D25 IOSTANDARD LVCMOS33} [get_ports { eth_rxctl}]; #MIO75_ENET_RX_CTLR
## reset, LED interface, check IOSTANDARD

## To do: SD-SPI, PL-CLOCK, JTAG


# minimize routing delay
set_max_delay -to   [get_ports tdo ] 20
set_max_delay -from [get_ports tms ] 20
set_max_delay -from [get_ports tdi ] 20
set_max_delay -from [get_ports trst ] 20

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]