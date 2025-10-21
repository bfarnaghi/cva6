## BUTTONS
set_property -dict {PACKAGE_PIN AM13 IOSTANDARD LVCMOS33} [get_ports cpu_reset] 
#active high


## clock check
#set_property PACKAGE_PIN AL8 [get_ports sys_clk_p]
#set_property PACKAGE_PIN AL7 [get_ports sys_clk_n]
#set_property IOSTANDARD LVDS [get_ports {sys_clk_p sys_clk_n}]
#set_property DIFF_TERM TRUE [get_ports {sys_clk_p sys_clk_n}]
set_property BOARD_PIN {user_si570_sysclk_n} [get_ports c0_sys_clk_n]
set_property BOARD_PIN {user_si570_sysclk_p} [get_ports c0_sys_clk_p]
set_property IOSTANDARD DIFF_SSTL12 [ get_ports "c0_sys_clk_n" ]
set_property IOSTANDARD DIFF_SSTL12 [ get_ports "c0_sys_clk_p" ]
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
set_property -dict {PACKAGE_PIN E13 IOSTANDARD LVCMOS33} [get_ports {rx}]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS33} [get_ports {tx}]

## No fan control needed

## ETHERNET
# set_property -dict {PACKAGE_PIN F25 IOSTANDARD LVCMOS33} [get_ports { eth_mdio }]; #MIO77_ENET_MDIO
# set_property -dict {PACKAGE_PIN H25 IOSTANDARD LVCMOS33} [get_ports { eth_mdc }]; #MIO76_ENET_MDC
# set_property -dict {PACKAGE_PIN A25 IOSTANDARD LVCMOS33} [get_ports { eth_txck }]; #MIO64_ENET_TX_CLK
# set_property -dict {PACKAGE_PIN A26 IOSTANDARD LVCMOS33} [get_ports { eth_txd[0] }]; #MIO65_ENET_TX_D0
# set_property -dict {PACKAGE_PIN A27 IOSTANDARD LVCMOS33} [get_ports { eth_txd[1] }]; #MIO66_ENET_TX_D1
# set_property -dict {PACKAGE_PIN B25 IOSTANDARD LVCMOS33} [get_ports { eth_txd[2] }]; #MIO67_ENET_TX_D2
# set_property -dict {PACKAGE_PIN B26 IOSTANDARD LVCMOS33} [get_ports { eth_txd[3] }]; #MIO68_ENET_TX_D3
# set_property -dict {PACKAGE_PIN B27 IOSTANDARD LVCMOS33} [get_ports { eth_txctl }]; #MIO69_ENET_TX_CTRL
# set_property -dict {PACKAGE_PIN C26 IOSTANDARD LVCMOS33} [get_ports { eth_rxck }]; #MIO70_ENET_RX_CLK
# set_property -dict {PACKAGE_PIN C27 IOSTANDARD LVCMOS33} [get_ports { eth_rxd[0]}]; #MIO71_ENET_RX_D0
# set_property -dict {PACKAGE_PIN E25 IOSTANDARD LVCMOS33} [get_ports { eth_rxd[1]}]; #MIO72_ENET_RX_D1
# set_property -dict {PACKAGE_PIN H24 IOSTANDARD LVCMOS33} [get_ports { eth_rxd[2]}]; #MIO73_ENET_RX_D2
# set_property -dict {PACKAGE_PIN G25 IOSTANDARD LVCMOS33} [get_ports { eth_rxd[3]}]; #MIO74_ENET_RX_D3
# set_property -dict {PACKAGE_PIN D25 IOSTANDARD LVCMOS33} [get_ports { eth_rxctl}]; #MIO75_ENET_RX_CTLR
# 
# # To do: JTAG
# SPI (Quad-SPI Flash) signals
# set_property -dict {PACKAGE_PIN AF16 IOSTANDARD LVCMOS18} [get_ports {spi_clk_o}]
# set_property -dict {PACKAGE_PIN AM15 IOSTANDARD LVCMOS18} [get_ports {spi_mosi}]   ;# CS_B signal
# set_property -dict {PACKAGE_PIN AH16 IOSTANDARD LVCMOS18} [get_ports {spi_ss}]     ;# DQ0 (IO0)

# Optionally include more if your design needs full Quad-SPI
#set_property -dict {PACKAGE_PIN AJ16 IOSTANDARD LVCMOS18} [get_ports {spi_io1}]   ;# DQ1 (IO1)
#set_property -dict {PACKAGE_PIN AD16 IOSTANDARD LVCMOS18} [get_ports {spi_io2}]   ;# DQ2
#set_property -dict {PACKAGE_PIN AG16 IOSTANDARD LVCMOS18} [get_ports {spi_io3}]   ;# DQ3

# JTAG
set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { trst_n }];
set_property -dict { PACKAGE_PIN B19   IOSTANDARD LVCMOS33 } [get_ports { tck    }];
set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { tdi    }];
set_property -dict { PACKAGE_PIN C19   IOSTANDARD LVCMOS33 } [get_ports { tdo    }];
set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports { tms    }];
# SD
# set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { sd_cd }]; #IO_L20N_T3_A07_D23_14 Sch=sd_cd
# set_property -dict { PACKAGE_PIN T21   IOSTANDARD LVCMOS33 } [get_ports { sd_d[1] }]; #IO_L4P_T0_D04_14 Sch=sd_d[1]
# set_property -dict { PACKAGE_PIN T20   IOSTANDARD LVCMOS33 } [get_ports { sd_d[2] }]; #IO_L6N_T0_D08_VREF_14 Sch=sd_d[2]
# set_property -dict { PACKAGE_PIN V20   IOSTANDARD LVCMOS33 } [get_ports { sd_reset }]; #IO_L11N_T1_SRCC_14 Sch=sd_reset

# minimize routing delay
set_max_delay -to   [get_ports {tdo} ] 20
set_max_delay -from [get_ports {tms} ] 20
set_max_delay -from [get_ports {tdi} ] 20
set_max_delay -from [get_ports {trst_n} ] 20
# accept sub-optimal placement, since tck only used in Debug
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets tck]
set_false_path -from [get_pins i_ddr/inst/div_clk_rst_r1_reg/C]
# set_false_path -from [get_ports trst_n]
set_property {IOSTANDARD LVCMOS33}[get_ports {spi_clk_o, spi_mosi, spi_ss}]
# set_property -dict {CFGBVS VCCO} [current_design]
# set_property -dict {CONFIG_VOLTAGE 3.3} [current_design]
## Below pin LOC constraints are for system clock and system reset and
# set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
## memory related pins# 
