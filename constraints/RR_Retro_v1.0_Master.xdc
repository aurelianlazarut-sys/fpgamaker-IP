# RR Retro v1.0 master constraints for AMD Vivado 2026.1
# Based on Spartan7_Retro_v1.1.xdc, which applies to RR Retro v1.0.
# Enable only the constraints you need and match your top-level port names.
# Do not duplicate constraints already supplied by board automation.
# Timing constraints are project-specific; define the input clocks as needed.


# clk oscillators
# set_property PACKAGE_PIN D14 [get_ports {clk}];  # "CLK 100MHz"
# set_property PACKAGE_PIN H11 [get_ports {clk12}];  # "CLK 12MHz"

#VGA DB15 CONN
#RED
# set_property PACKAGE_PIN A10 [get_ports {VGA_R[0]}];  # VGA_R1 MSB
# set_property PACKAGE_PIN A12 [get_ports {VGA_R[1]}];  # VGA_R2
# set_property PACKAGE_PIN A13 [get_ports {VGA_R[2]}];  # VGA_R3
# set_property PACKAGE_PIN B13 [get_ports {VGA_R[3]}];  # VGA_R4 LSB
#GREEN
# set_property PACKAGE_PIN B14 [get_ports {VGA_G[0]}];  # VGA_G1 MSB
# set_property PACKAGE_PIN C14 [get_ports {VGA_G[1]}];  # VGA_G2
# set_property PACKAGE_PIN D12 [get_ports {VGA_G[2]}];  # VGA_G3
# set_property PACKAGE_PIN D13 [get_ports {VGA_G[3]}];  # VGA_G4 LSB
#BLUE
# set_property PACKAGE_PIN E12 [get_ports {VGA_B[0]}];  # VGA_B1 MSB
# set_property PACKAGE_PIN E13 [get_ports {VGA_B[1]}];  # VGA_B2
# set_property PACKAGE_PIN F12 [get_ports {VGA_B[2]}];  # VGA_B3
# set_property PACKAGE_PIN F14 [get_ports {VGA_B[3]}];  # VGA_B4 LSB
#SYNC
# set_property PACKAGE_PIN F13 [get_ports {VGA_VS}];  # VGA V SYNC
# set_property PACKAGE_PIN G14 [get_ports {VGA_HS}];  # VGA H SYNC



#leds
# set_property PACKAGE_PIN L5 [get_ports {led[0]}];  # "LED 1"
# set_property PACKAGE_PIN H14 [get_ports {led[1]}]; # "LED 2"
# set_property PACKAGE_PIN M1 [get_ports {led[2]}];  # "LED 3"
# set_property PACKAGE_PIN L1 [get_ports {led[3]}];  # "LED 4"
# set_property PACKAGE_PIN M3 [get_ports {led[4]}];  # "LED 5"
# set_property PACKAGE_PIN M2 [get_ports {led[5]}];  # "LED 6"
# set_property PACKAGE_PIN P2 [get_ports {led[6]}];  # "LED 7"
# set_property PACKAGE_PIN N1 [get_ports {led[7]}];  # "LED 8"

#switches
# set_property PACKAGE_PIN M5 [get_ports {S1}];  # S1
# set_property PACKAGE_PIN M4 [get_ports {S2}];  # S2
# set_property PACKAGE_PIN P5 [get_ports {S3}];  # S3
# set_property PACKAGE_PIN N4 [get_ports {S4}];  # S4

#push buttons
# set_property PACKAGE_PIN P4 [get_ports {SW2}];  # SW2
# set_property PACKAGE_PIN P3 [get_ports {SW3}];  # SW3
# set_property PACKAGE_PIN L3 [get_ports {SW4}];  # SW4
# set_property PACKAGE_PIN L2 [get_ports {SW5}];  # SW5

#USB Low Speed 1.5Mbit/s
#Power enable pins
# set_property PACKAGE_PIN L13 [get_ports {VBUS1_ON}];  #Enable 5V on if USB1
# set_property PACKAGE_PIN K11 [get_ports {VBUS2_ON}];  #Enable 5V on if USB2
# set_property PACKAGE_PIN K12 [get_ports {VBUS3_ON}];  #Enable 5V on if USB3
# set_property PACKAGE_PIN J11 [get_ports {VBUS4_ON}];  #Enable 5V on if USB4

#data pins USB1
# set_property PACKAGE_PIN N10 [get_ports {USB1_DP}];  #USB1 DATA_P
# set_property PACKAGE_PIN P10 [get_ports {USB1_DM}];  #USB1 DATA_M

#data pins USB2
# set_property PACKAGE_PIN M11 [get_ports {USB2_DP}];  #USB2 DATA_P
# set_property PACKAGE_PIN M10 [get_ports {USB2_DM}];  #USB2 DATA_M

#data pins USB3
# set_property PACKAGE_PIN N11 [get_ports {USB3_DP}];  #USB3 DATA_P
# set_property PACKAGE_PIN P11 [get_ports {USB3_DM}];  #USB3 DATA_M

#data pins USB4
# set_property PACKAGE_PIN L12 [get_ports {USB4_DP}];  #USB4 DATA_P
# set_property PACKAGE_PIN M12 [get_ports {USB4_DM}];  #USB4 DATA_M



#USB-SERIAL
# set_property PACKAGE_PIN J4 [get_ports {UART_RX}]; #reciove into FPGA
# set_property PACKAGE_PIN J3 [get_ports {UART_TX}]; #transmit from FPGA

#PMOD pins

#PMOD A J7
# set_property PACKAGE_PIN H4 [get_ports {PMODA_5}]; #PMOD A pin#5
# set_property PACKAGE_PIN H2 [get_ports {PMODA_6}]; #PMOD A pin#6
# set_property PACKAGE_PIN H3 [get_ports {PMODA_7}]; #PMOD A pin#7
# set_property PACKAGE_PIN H1 [get_ports {PMODA_8}]; #PMOD A pin#8
# set_property PACKAGE_PIN J2 [get_ports {PMODA_9}]; #PMOD A pin#9
# set_property PACKAGE_PIN K4 [get_ports {PMODA_10}]; #PMOD A pin#10
# set_property PACKAGE_PIN J1 [get_ports {PMODA_11}]; #PMOD A pin#11
# set_property PACKAGE_PIN K3 [get_ports {PMODA_12}]; #PMOD A pin#12

#PMOD B J8
# set_property PACKAGE_PIN C1 [get_ports {PMODB_5}]; #PMOD B pin#5
# set_property PACKAGE_PIN F4 [get_ports {PMODB_6}]; #PMOD B pin#6
# set_property PACKAGE_PIN D1 [get_ports {PMODB_7}]; #PMOD B pin#7
# set_property PACKAGE_PIN G4 [get_ports {PMODB_8}]; #PMOD B pin#8
# set_property PACKAGE_PIN F1 [get_ports {PMODB_9}]; #PMOD B pin#9
# set_property PACKAGE_PIN D2 [get_ports {PMODB_10}]; #PMOD B pin#10
# set_property PACKAGE_PIN G1 [get_ports {PMODB_11}]; #PMOD B pin#11
# set_property PACKAGE_PIN E2 [get_ports {PMODB_12}]; #PMOD B pin#12

#PMOD C J9
# set_property PACKAGE_PIN A4 [get_ports {PMODC_5}]; #PMOD C pin#5
# set_property PACKAGE_PIN C5 [get_ports {PMODC_6}]; #PMOD C pin#6
# set_property PACKAGE_PIN A3 [get_ports {PMODC_7}]; #PMOD C pin#7
# set_property PACKAGE_PIN C4 [get_ports {PMODC_8}]; #PMOD C pin#8
# set_property PACKAGE_PIN B2 [get_ports {PMODC_9}]; #PMOD C pin#9
# set_property PACKAGE_PIN B3 [get_ports {PMODC_10}]; #PMOD C pin#10
# set_property PACKAGE_PIN B1 [get_ports {PMODC_11}]; #PMOD C pin#11
# set_property PACKAGE_PIN A2 [get_ports {PMODC_12}]; #PMOD C pin#12

#PMOD D J10
# set_property PACKAGE_PIN D3 [get_ports {PMODD_5}]; #PMOD D pin#5
# set_property PACKAGE_PIN B5 [get_ports {PMODD_6}]; #PMOD D pin#6
# set_property PACKAGE_PIN C3 [get_ports {PMODD_7}]; #PMOD D pin#7
# set_property PACKAGE_PIN A5 [get_ports {PMODD_8}]; #PMOD D pin#8
# set_property PACKAGE_PIN E4 [get_ports {PMODD_9}]; #PMOD D pin#9
# set_property PACKAGE_PIN F3 [get_ports {PMODD_10}]; #PMOD D pin#10
# set_property PACKAGE_PIN D4 [get_ports {PMODD_11}]; #PMOD D pin#11
# set_property PACKAGE_PIN F2 [get_ports {PMODD_12}]; #PMOD D pin#12


# Optional bank-wide settings (disabled by default).
# Prefer setting IOSTANDARD for each enabled port. Enable a bank-wide
# rule only if the selected bank voltage and every affected port allow it.
# In particular, DVI uses TMDS_33 and must retain that standard.
# Note that the bank voltage for IO Bank 14 is fixed to 3.3V on Roadrunner.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 14]];
#set_property DRIVE 4 [get_ports -of_objects [get_iobanks 33]];  #set drive to 4mA

# Bank 34 can select 2.5 V or 3.3 V via J13. Confirm the setting before enabling LVCMOS33.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 34]];

#DVI




# set_property -dict { PACKAGE_PIN P12   IOSTANDARD TMDS_33 } [get_ports { DVI_CLK_P }];
# set_property -dict { PACKAGE_PIN P13   IOSTANDARD TMDS_33 } [get_ports { DVI_CLK_N }];
# set_property -dict { PACKAGE_PIN N14   IOSTANDARD TMDS_33 } [get_ports { DVI_P[0] }];
# set_property -dict { PACKAGE_PIN M14   IOSTANDARD TMDS_33 } [get_ports { DVI_N[0] }];
# set_property -dict { PACKAGE_PIN M13   IOSTANDARD TMDS_33 } [get_ports { DVI_P[1] }];
# set_property -dict { PACKAGE_PIN L14   IOSTANDARD TMDS_33 } [get_ports { DVI_N[1] }];
# set_property -dict { PACKAGE_PIN J13   IOSTANDARD TMDS_33 } [get_ports { DVI_P[2] }];
# set_property -dict { PACKAGE_PIN J14   IOSTANDARD TMDS_33 } [get_ports { DVI_N[2] }];
