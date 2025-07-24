# Zybo Test OBC

This repository contains Vivado and Petaliux projects to setup a Zybo Z7-20 to reflect the interfaces on the Xiphos Q7 OBC so a test hardware environment is available.

## Requirements

- Xilinx Vivado 2022.2

## Interfaces

This project exposes the following interfaces to reflect those outlined in `EX3-ES OBC Hardware Configuration and Setup Document` `Interfaces` section found on the AlbertaSat google drive:

### I2C (2)
- EMIO I2C1 (Daedalus)
	- Pmod JB pins
		- SDA: 1
		- SCL: 2
- AXI I2C0 (S-Band)
	- Pmod JD pins
		- SDA: 2
		- SCL: 1

### SPI (1)

- EMIO SPI1 (S-Band)
	- Pmod JD pins
		- SCLK: 3
		- MOSI: 4
		- MISO: 7
		- SS: 8

### UART (4)
- AXI UART0 (GPS)
	- Pmod JB pins
		- TX: 7
		- RX: 8
- AXI UART2 (DFGM)
	- Pmod JB pins
		- TX: 3
		- RX: 4
- MIO UART0 [10:11] (UHF)
	- Pmod JF Pins
 		- TX: 3
   		- RX: 2 
- MIO UART1 [12:13] (Heracles)
	- Pmod JF Pins
 		- TX: 4
   		- RX: 1

### CAN (1)
- MIO CAN0 [14:15]
	- Pmod JF pins
		- TX: 10
		- RX: 9

### GPIO

- Pmod JE -> GPIO_0[0:7]
- Pmod JA -> GPIO_0[8:15]
- Pmod JC -> GPIO_0[16:23]
- Pmod JB -> GPIO_0[24:25] (Pins 9 and 10 respectively)
- PMOD JD -> GPIO_0[26:27] (Pins 9 and 10 respectively)

## IP Blocks:

Current IP Blocks
- SBAND_I2C
- GPS_UART
- DFGM_UART
- SPI_0_1
- SPI_0_0
- GPIO_0

## Troubleshooting

### Synthesis not using correct paths for certain IPs

When runnning design synthesis on a new machine it will, for some reason, get confused on where to find some files. Using the paths from the previously machine which causes the synthesis job to fail. 

To fix this, go to `Tools > Settings > IP` and either clear the cache or disable it.
