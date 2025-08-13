# Zybo Test OBC

This repository contains Vivado and Petaliux projects to setup a Zybo Z7-20 to reflect the interfaces on the Xiphos Q7 OBC so a test hardware environment is available.

## Requirements

- Xilinx Vivado 2022.2

## Interfaces

This project exposes the following interfaces to reflect those outlined in the OBC ICD found on the AlbertaSat google drive:

### I2C (2)

#### DB_I2C: EMIO I2C1
- Pmod JB pins:
	- SCL: Pin 1 (V8)
	- SDA: Pin 2 (W8)

#### SBAND_I2C: AXI I2C
- Pmod JD pins:
	- SCL: Pin 1 (T14)
	- SDA: Pin 2 (T15)

### SPI (1)

#### SBAND_SPI: EMIO SPI1
- Pmod JD pins:
	- SCLK: Pin 3 (P14)
	- MOSI: Pin 4 (R14) 
	- MISO: Pin 7 (U14)
	- SS: Pin 8 (U15)

### UART (3)

#### GPS_UART: AXI UART
- Pmod JB pins:
	- TX: Pin 7 (Y7)
	- RX: Pin 8 (Y6)

#### DFGM_UART: AXI UART
- Pmod JB pins:
	- TX: Pin 3 (U7)
	- RX: Pin 4 (V7)

#### HERACLES_UART: AXI UART
- Pmod JD pins:
	- TX: Pin 9 (V17)
	- RX: Pin 10 (V18)

#### UHF_UART: MIO UART0
- Pmod JF pins:
	- TX: Pin 3 (MIO-11)
	- RX: Pin 2 (MIO-10)

### CAN (1)

#### CAN0: MIO
- Pmod JF pins:
	- TX: Pin 10 (MIO-15)
	- RX: Pin 9 (MIO-14)

### GPIO

#### GPIO_0: EMIO

- **Pmod JE** -> GPIO_0[0:7]:
	- Pin 1: GPIO_0[0] (V12) - STACK_UHF_ENABLE
	- Pin 2: GPIO_0[1] (W16) - SBAND_TR
	- Pin 3: GPIO_0[2] (J15) - STACK_SBAND_n_RESET
	- Pin 4: GPIO_0[3] (H15) - Q7_DFGMKnifeEN
	- Pin 7: GPIO_0[4] (V13) - Q7_StarboardKnifeEN
	- Pin 8: GPIO_0[5] (U17) - SwitchDeployable_S
	- Pin 9: GPIO_0[6] (T17) - SwitchDeployable_P
	- Pin 10: GPIO_0[7] (Y17) - Starboard_IR_Sens

- **Pmod JA** -> GPIO_0[8:15]:
	- Pin 1: GPIO_0[8] (N15) - SP_Alert
	- Pin 2: GPIO_0[9] (L14) - SP_SHDN
	- Pin 3: GPIO_0[10] (K16) - GPS_nAlert
	- Pin 4: GPIO_0[11] (K14) - GPS_SHDN
	- Pin 7: GPIO_0[12] (N16) - Port_IR_Sens
	- Pin 8: GPIO_0[13] (L15) - STACK_SBAND_STX_EN
	- Pin 9: GPIO_0[14] (J16) - DFGM_IR_Sens
	- Pin 10: GPIO_0[15] (J14) - TS_Alert

- **Pmod JC** -> GPIO_0[16:23]:
	- Pin 1: GPIO_0[16] (V15) - TS_RS
	- Pin 2: GPIO_0[17] (W15) - GPS_RSTN
	- Pin 3: GPIO_0[18] (T11) - HUB_RESET_L
	- Pin 4: GPIO_0[19] (T10) - HUB_HS_IND
	- Pin 7: GPIO_0[20] (W14) - CAN_EN
	- Pin 8: GPIO_0[21] (Y14) - CAN_RS
	- Pin 9: GPIO_0[22] (T12) - Q7_PortKnifeEN
	- Pin 10: GPIO_0[23] (U12) - HUB_SETUP_IND

- **Pmod JB** -> GPIO_0[24]:
	- Pin 9: GPIO_0[24] (V6) - STACK_GPS_PPS

## IP Blocks:

Current IP Blocks
- SBAND_I2C
- GPS_UART
- DFGM_UART
- HERACLES_UART

## Zybo Pmod Pinout

Quick reference for zybo pmod pinouts

| Pin      | Pmod JA | Pmod JB* | Pmod JC | Pmod JD | Pmod JE | Pmod JF  |
|----------|---------|----------|---------|---------|---------|----------|
| Pmod Type| XADC    | High-Speed| High-Speed| High-Speed| Standard| MIO      |
| Pin 1    | N15     | V8       | V15     | T14     | V12     | MIO-13   |
| Pin 2    | L14     | W8       | W15     | T15     | W16     | MIO-10   |
| Pin 3    | K16     | U7       | T11     | P14     | J15     | MIO-11   |
| Pin 4    | K14     | V7       | T10     | R14     | H15     | MIO-12   |
| Pin 7    | N16     | Y7       | W14     | U14     | V13     | MIO-0    |
| Pin 8    | L15     | Y6       | Y14     | U15     | U17     | MIO-9    |
| Pin 9    | J16     | V6       | T12     | V17     | T17     | MIO-14   |
| Pin 10   | J14     | W6       | U12     | V18     | Y17     | MIO-15   |

## Troubleshooting

### Synthesis not using correct paths for certain IPs

When running design synthesis on a new machine it will, for some reason, get confused on where to find some files. Using the paths from the previously machine which causes the synthesis job to fail. 

To fix this, go to `Tools > Settings > IP` and either clear the cache or disable it.
