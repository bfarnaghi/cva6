## BUTTONS
set_property -dict {PACKAGE_PIN AM13 IOSTANDARD LVCMOS33} [get_ports cpu_reset]


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
set_property -dict {PACKAGE_PIN E13 IOSTANDARD LVCMOS33} [get_ports {tx}]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS33} [get_ports {rx}]

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

# set_property -dict {CFGBVS VCCO} [current_design]
set_property -dict {CONFIG_VOLTAGE 3.3} [current_design]
## Below pin LOC constraints are for system clock and system reset and
# set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
## memory related pins# 

# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[51]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[50]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[53]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[63]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[62]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[49]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[48]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dqs_c[7]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dqs_t[7]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[56]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dqs_t[6]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dm_dbi_n[6]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dm_dbi_n[7]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[57]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dqs_c[6]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[45]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[22]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[44]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[38]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[27]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[26]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[47]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dm_dbi_n[2]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[18]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[46]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[36]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[39]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dm_dbi_n[4]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[30]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dqs_t[3]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[23]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[43]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dqs_t[2]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[19]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[42]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[37]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[28]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[31]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dqs_c[3]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[20]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dqs_c[2]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[40]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[33]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[32]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[29]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[24]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[21]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dqs_t[5]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[17]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[16]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dm_dbi_n[5]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[41]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[34]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dm_dbi_n[3]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[25]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dqs_c[5]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[6]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dm_dbi_n[0]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[35]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dqs_c[4]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dqs_t[4]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[10]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_ba[0]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[7]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_odt[0]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_cs_n[0]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_bg[0]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_adr[7]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_adr[6]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[13]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[12]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[11]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_ba[1]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[2]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[0]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_adr[16]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_adr[15]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[15]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[14]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_adr[13]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[3]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[1]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_adr[8]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_adr[4]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_adr[1]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_adr[0]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[9]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[8]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_adr[14]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_adr[9]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_adr[11]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_adr[5]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_ck_t[0]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dqs_t[1]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dm_dbi_n[1]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[4]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_cke[0]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dqs_c[0]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dqs_t[0]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_adr[10]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_adr[12]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_adr[3]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_adr[2]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_ck_c[0]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dqs_c[1]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_act_n" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[5]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[59]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[58]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[54]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[52]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[61]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[60]" ]
# set_property OUTPUT_IMPEDANCE RDRV_40_40 [ get_ports "c0_ddr4_dq[55]" ]# 
# 
# 
# 

# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[51]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[50]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[53]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[63]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[62]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[49]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[48]" ]
# set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "c0_ddr4_dqs_c[7]" ]
# set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "c0_ddr4_dqs_t[7]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[56]" ]
# set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "c0_ddr4_dqs_t[6]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dm_dbi_n[6]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dm_dbi_n[7]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[57]" ]
# set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "c0_ddr4_dqs_c[6]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[45]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[22]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[44]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[38]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[27]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[26]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[47]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dm_dbi_n[2]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[18]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[46]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[36]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[39]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dm_dbi_n[4]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[30]" ]
# set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "c0_ddr4_dqs_t[3]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[23]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[43]" ]
# set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "c0_ddr4_dqs_t[2]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[19]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[42]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[37]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[28]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[31]" ]
# set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "c0_ddr4_dqs_c[3]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[20]" ]
# set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "c0_ddr4_dqs_c[2]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[40]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[33]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[32]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[29]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[24]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[21]" ]
# set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "c0_ddr4_dqs_t[5]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[17]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[16]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dm_dbi_n[5]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[41]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[34]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dm_dbi_n[3]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[25]" ]
# set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "c0_ddr4_dqs_c[5]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[6]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dm_dbi_n[0]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[35]" ]
# set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "c0_ddr4_dqs_c[4]" ]
# set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "c0_ddr4_dqs_t[4]" ]
# set_property IOSTANDARD LVCMOS12 [ get_ports "c0_ddr4_reset_n" ]
# set_property DRIVE 8 [ get_ports "c0_ddr4_reset_n" ]# 

# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[10]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_ba[0]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[7]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_odt[0]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_cs_n[0]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_bg[0]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_adr[7]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_adr[6]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[13]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[12]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[11]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_ba[1]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[2]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[0]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_adr[16]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_adr[15]" ]
# set_property IOSTANDARD DIFF_SSTL12 [ get_ports "c0_sys_clk_n" ]
# set_property IOSTANDARD DIFF_SSTL12 [ get_ports "c0_sys_clk_p" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[15]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[14]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_adr[13]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[3]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[1]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_adr[8]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_adr[4]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_adr[1]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_adr[0]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[9]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[8]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_adr[14]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_adr[9]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_adr[11]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_adr[5]" ]
# set_property IOSTANDARD DIFF_SSTL12_DCI [ get_ports "c0_ddr4_ck_t[0]" ]
# set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "c0_ddr4_dqs_t[1]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dm_dbi_n[1]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[4]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_cke[0]" ]
# set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "c0_ddr4_dqs_c[0]" ]
# set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "c0_ddr4_dqs_t[0]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_adr[10]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_adr[12]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_adr[3]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_adr[2]" ]
# set_property IOSTANDARD DIFF_SSTL12_DCI [ get_ports "c0_ddr4_ck_c[0]" ]
# set_property IOSTANDARD DIFF_POD12_DCI [ get_ports "c0_ddr4_dqs_c[1]" ]
# set_property IOSTANDARD SSTL12_DCI [ get_ports "c0_ddr4_act_n" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[5]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[59]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[58]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[54]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[52]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[61]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[60]" ]
# set_property IOSTANDARD POD12_DCI [ get_ports "c0_ddr4_dq[55]" ]# 
# 

# ## This signal is static signals. Once asserted it will stay HIGH.# 

# ## The multi cycle path constraint is added to improve the timing.# 

# set_multicycle_path -setup 8 -from [get_pins */u_ddr_cal_top/calDone*/C]
# set_multicycle_path -end -hold 7 -from [get_pins */u_ddr_cal_top/calDone*/C]# 
# 

# ## These signals once asserted, stays asserted for multiple clock cycles.# 

# ## False path constraint is added to improve the HOLD timing.# 

# set_false_path -hold -to [get_pins */*/*/*/*/*.u_xiphy_control/xiphy_control/RIU_ADDR*]
# set_false_path -hold -to [get_pins */*/*/*/*/*.u_xiphy_control/xiphy_control/RIU_WR_DATA*]# 
# 

# set_property SLEW FAST  [get_ports {c0_ddr4_adr[*] c0_ddr4_act_n c0_ddr4_ba[*] c0_ddr4_bg[*] c0_ddr4_cke[*] c0_ddr4_ck_t[*] c0_ddr4_ck_c[*] c0_ddr4_odt[*] c0_ddr4_dq[*] c0_ddr4_dqs_t[*] c0_ddr4_dqs_c[*]}]
# set_property IBUF_LOW_PWR FALSE  [get_ports {c0_ddr4_dq[*] c0_ddr4_dqs_t[*] c0_ddr4_dqs_c[*]}]
# set_property ODT RTT_40  [get_ports {c0_ddr4_dq[*] c0_ddr4_dqs_t[*] c0_ddr4_dqs_c[*]}]
# set_property EQUALIZATION EQ_LEVEL2 [get_ports {c0_ddr4_dq[*] c0_ddr4_dqs_t[*] c0_ddr4_dqs_c[*]}]
# set_property PRE_EMPHASIS RDRV_240 [get_ports {c0_ddr4_dq[*] c0_ddr4_dqs_t[*] c0_ddr4_dqs_c[*]}]
# set_property SLEW FAST  [get_ports {c0_ddr4_cs_n[*]}]
# set_property DATA_RATE SDR  [get_ports {c0_ddr4_cs_n[*]}]
# set_property SLEW FAST  [get_ports {c0_ddr4_dm_dbi_n[*]}]
# set_property IBUF_LOW_PWR FALSE  [get_ports {c0_ddr4_dm_dbi_n[*]}]
# set_property ODT RTT_40  [get_ports {c0_ddr4_dm_dbi_n[*]}]
# set_property EQUALIZATION EQ_LEVEL2 [get_ports {c0_ddr4_dm_dbi_n[*]}]
# set_property PRE_EMPHASIS RDRV_240 [get_ports {c0_ddr4_dm_dbi_n[*]}]
# set_property DATA_RATE DDR [get_ports {c0_ddr4_dm_dbi_n[*]}]
# set_property DATA_RATE SDR  [get_ports {c0_ddr4_adr[*] c0_ddr4_act_n c0_ddr4_ba[*] c0_ddr4_bg[*] c0_ddr4_cke[*] c0_ddr4_odt[*] }]
# set_property DATA_RATE DDR  [get_ports {c0_ddr4_dq[*] c0_ddr4_dqs_t[*] c0_ddr4_dqs_c[*] c0_ddr4_ck_t[*] c0_ddr4_ck_c[*]}]
# ## Multi-cycle path constraints for Fabric - RIU clock domain crossing signals
# set_max_delay 5.0 -datapath_only -from [get_pins */*/*/u_ddr_cal_addr_decode/io_ready_lvl_reg/C] -to [get_pins */u_io_ready_lvl_sync/SYNC[*].sync_reg_reg[0]/D]
# set_max_delay 5.0 -datapath_only -from [get_pins */*/*/u_ddr_cal_addr_decode/io_read_data_reg[*]/C] -to [get_pins */u_io_read_data_sync/SYNC[*].sync_reg_reg[0]/D]
# set_max_delay 3.0 -datapath_only -from [get_pins */*/*/phy_ready_riuclk_reg/C] -to [get_pins */u_phy2clb_phy_ready_sync/SYNC[*].sync_reg_reg[0]/D]
# set_max_delay 3.0 -datapath_only -from [get_pins */*/*/bisc_complete_riuclk_reg/C] -to [get_pins */u_phy2clb_bisc_complete_sync/SYNC[*].sync_reg_reg[0]/D]
# set_max_delay 3.0 -datapath_only -from [get_pins */*/io_addr_strobe_lvl_riuclk_reg/C] -to [get_pins */u_io_addr_strobe_lvl_sync/SYNC[*].sync_reg_reg[0]/D]
# set_max_delay 3.0 -datapath_only -from [get_pins */*/io_write_strobe_riuclk_reg/C] -to [get_pins */u_io_write_strobe_sync/SYNC[*].sync_reg_reg[0]/D]
# set_max_delay 3.0 -datapath_only -from [get_pins */*/io_address_riuclk_reg[*]/C] -to [get_pins */u_io_addr_sync/SYNC[*].sync_reg_reg[0]/D]
# set_max_delay 3.0 -datapath_only -from [get_pins */*/io_write_data_riuclk_reg[*]/C] -to [get_pins */u_io_write_data_sync/SYNC[*].sync_reg_reg[0]/D]
# set_max_delay 10.0 -datapath_only -from [get_pins */en_vtc_in_reg/C] -to [get_pins */u_en_vtc_sync/SYNC[*].sync_reg_reg[0]/D]
# set_max_delay 10.0 -datapath_only -from [get_pins */*/riu2clb_valid_r1_riuclk_reg[*]/C] -to [get_pins */u_riu2clb_valid_sync/SYNC[*].sync_reg_reg[0]/D]
# set_max_delay 10.0 -datapath_only -from [get_pins */*/*/phy2clb_fixdly_rdy_low_riuclk_int_reg[*]/C] -to [get_pins */u_phy2clb_fixdly_rdy_low/SYNC[*].sync_reg_reg[0]/D]
# set_max_delay 10.0 -datapath_only -from [get_pins */*/*/phy2clb_fixdly_rdy_upp_riuclk_int_reg[*]/C] -to [get_pins */u_phy2clb_fixdly_rdy_upp/SYNC[*].sync_reg_reg[0]/D]
# set_max_delay 10.0 -datapath_only -from [get_pins */*/*/phy2clb_phy_rdy_low_riuclk_int_reg[*]/C] -to [get_pins */u_phy2clb_phy_rdy_low/SYNC[*].sync_reg_reg[0]/D]
# set_max_delay 10.0 -datapath_only -from [get_pins */*/*/phy2clb_phy_rdy_upp_riuclk_int_reg[*]/C] -to [get_pins */u_phy2clb_phy_rdy_upp/SYNC[*].sync_reg_reg[0]/D]
# set_max_delay 10.0 -datapath_only -from [get_pins */rst_r1_reg/C] -to [get_pins */u_fab_rst_sync/SYNC[*].sync_reg_reg[0]/D]
# set_max_delay 3.0 -datapath_only -from [get_pins  */*/*/clb2phy_t_b_addr_riuclk_reg/C] -to [get_pins  */*/*/clb2phy_t_b_addr_i_reg[0]/D]
# set_max_delay 3.0 -datapath_only -from [get_pins  */*/*/*/slave_en_lvl_reg/C] -to [get_pins  */*/*/*/u_slave_en_sync/SYNC[*].sync_reg_reg[0]/D]
# set_max_delay 3.0 -datapath_only -from [get_pins  */*/*/*/slave_we_r_reg/C] -to [get_pins  */*/*/*/u_slave_we_sync/SYNC[*].sync_reg_reg[0]/D]
# set_max_delay 3.0 -datapath_only -from [get_pins  */*/*/*/slave_addr_r_reg[*]/C] -to [get_pins  */*/*/*/u_slave_addr_sync/SYNC[*].sync_reg_reg[0]/D]
# set_max_delay 3.0 -datapath_only -from [get_pins  */*/*/*/slave_di_r_reg[*]/C] -to [get_pins  */*/*/*/u_slave_di_sync/SYNC[*].sync_reg_reg[0]/D]
# set_max_delay 3.0 -datapath_only -from [get_pins  */*/*/*/slave_rdy_cptd_sclk_reg/C] -to [get_pins  */*/*/*/u_slave_rdy_cptd_sync/SYNC[*].sync_reg_reg[0]/D]
# set_max_delay 12.0 -datapath_only -from [get_pins */*/*/*/slave_rdy_lvl_fclk_reg/C] -to [get_pins  */*/*/*/u_slave_rdy_sync/SYNC[*].sync_reg_reg[0]/D]
# set_max_delay 12.0 -datapath_only -from [get_pins */*/*/*/slave_do_fclk_reg[*]/C] -to [get_pins  */*/*/*/u_slave_do_sync/SYNC[*].sync_reg_reg[0]/D]
# set_false_path -through [get_pins u_ddr4_infrastructure/sys_rst]
# set_false_path -from [get_pins  */input_rst_design_reg/C] -to [get_pins */rst_div_sync_r_reg[0]/D]
# set_false_path -from [get_pins  */input_rst_design_reg/C] -to [get_pins */rst_riu_sync_r_reg[0]/D]
# set_false_path -from [get_pins  */input_rst_design_reg/C] -to [get_pins */rst_mb_sync_r_reg[0]/D]
# set_false_path -from [get_pins  */rst_async_riu_div_reg/C] -to [get_pins */rst_div_sync_r_reg[0]/D]
# set_false_path -from [get_pins  */rst_async_mb_reg/C]      -to [get_pins */rst_mb_sync_r_reg[0]/D]
# set_false_path -from [get_pins  */rst_async_riu_div_reg/C] -to [get_pins */rst_riu_sync_r_reg[0]/D]
# ## These below commands are used to create Interface ports for controller.# 

# create_interface -quiet interface_ddr4
# set_property interface interface_ddr4 [get_ports [list {c0_ddr4_dq[51]} {c0_ddr4_dq[50]} {c0_ddr4_dq[53]} {c0_ddr4_dq[63]} {c0_ddr4_dq[62]} {c0_ddr4_dq[49]} {c0_ddr4_dq[48]} {c0_ddr4_dqs_c[7]} {c0_ddr4_dqs_t[7]} {c0_ddr4_dq[56]} {c0_ddr4_dqs_t[6]} {c0_ddr4_dm_dbi_n[6]} {c0_ddr4_dm_dbi_n[7]} {c0_ddr4_dq[57]} {c0_ddr4_dqs_c[6]} {c0_ddr4_dq[45]} {c0_ddr4_dq[22]} {c0_ddr4_dq[44]} {c0_ddr4_dq[38]} {c0_ddr4_dq[27]} {c0_ddr4_dq[26]} {c0_ddr4_dq[47]} {c0_ddr4_dm_dbi_n[2]} {c0_ddr4_dq[18]} {c0_ddr4_dq[46]} {c0_ddr4_dq[36]} {c0_ddr4_dq[39]} {c0_ddr4_dm_dbi_n[4]} {c0_ddr4_dq[30]} {c0_ddr4_dqs_t[3]} {c0_ddr4_dq[23]} {c0_ddr4_dq[43]} {c0_ddr4_dqs_t[2]} {c0_ddr4_dq[19]} {c0_ddr4_dq[42]} {c0_ddr4_dq[37]} {c0_ddr4_dq[28]} {c0_ddr4_dq[31]} {c0_ddr4_dqs_c[3]} {c0_ddr4_dq[20]} {c0_ddr4_dqs_c[2]} {c0_ddr4_dq[40]} {c0_ddr4_dq[33]} {c0_ddr4_dq[32]} {c0_ddr4_dq[29]} {c0_ddr4_dq[24]} {c0_ddr4_dq[21]} {c0_ddr4_dqs_t[5]} {c0_ddr4_dq[17]} {c0_ddr4_dq[16]} {c0_ddr4_dm_dbi_n[5]} {c0_ddr4_dq[41]} {c0_ddr4_dq[34]} {c0_ddr4_dm_dbi_n[3]} {c0_ddr4_dq[25]} {c0_ddr4_dqs_c[5]} {c0_ddr4_dq[6]} {c0_ddr4_dm_dbi_n[0]} {c0_ddr4_dq[35]} {c0_ddr4_dqs_c[4]} {c0_ddr4_dqs_t[4]} c0_ddr4_reset_n {c0_ddr4_dq[10]} {c0_ddr4_ba[0]} {c0_ddr4_dq[7]} {c0_ddr4_odt[0]} {c0_ddr4_cs_n[0]} {c0_ddr4_bg[0]} {c0_ddr4_adr[7]} {c0_ddr4_adr[6]} {c0_ddr4_dq[13]} {c0_ddr4_dq[12]} {c0_ddr4_dq[11]} {c0_ddr4_ba[1]} {c0_ddr4_dq[2]} {c0_ddr4_dq[0]} {c0_ddr4_adr[16]} {c0_ddr4_adr[15]} c0_sys_clk_n c0_sys_clk_p {c0_ddr4_dq[15]} {c0_ddr4_dq[14]} {c0_ddr4_adr[13]} {c0_ddr4_dq[3]} {c0_ddr4_dq[1]} {c0_ddr4_adr[8]} {c0_ddr4_adr[4]} {c0_ddr4_adr[1]} {c0_ddr4_adr[0]} {c0_ddr4_dq[9]} {c0_ddr4_dq[8]} {c0_ddr4_adr[14]} {c0_ddr4_adr[9]} {c0_ddr4_adr[11]} {c0_ddr4_adr[5]} {c0_ddr4_ck_t[0]} {c0_ddr4_dqs_t[1]} {c0_ddr4_dm_dbi_n[1]} {c0_ddr4_dq[4]} {c0_ddr4_cke[0]} {c0_ddr4_dqs_c[0]} {c0_ddr4_dqs_t[0]} {c0_ddr4_adr[10]} {c0_ddr4_adr[12]} {c0_ddr4_adr[3]} {c0_ddr4_adr[2]} {c0_ddr4_ck_c[0]} {c0_ddr4_dqs_c[1]} c0_ddr4_act_n {c0_ddr4_dq[5]} {c0_ddr4_dq[59]} {c0_ddr4_dq[58]} {c0_ddr4_dq[54]} {c0_ddr4_dq[52]} {c0_ddr4_dq[61]} {c0_ddr4_dq[60]} {c0_ddr4_dq[55]}]]# 
