# Zybo Test OBC

This repository contains Vivado and Petaliux projects to setup a Zybo Z7-20 to reflect the interfaces on the Xiphos Q7 OBC so a test hardware environment is available.

## Requirements

- Xilinx Vivado 2022.2

## Interfaces

This project exposes the following interfaces to reflect those outlined in `EX3-ES OBC Hardware Configuration and Setup Document` `Interfaces` section found on the AlbertaSat google drive:

### I2C (3)
- MIO I2C0 [14:15] (Daedalus)
	- Pmod JF pins
		- SDA: 10
		- SCL: 9
- EMIO I2C1 (Hyperion)
	- Pmod JB pins
		- SDA: 2
		- SCL: 1
- AXI I2C0 (S-Band)
	- Pmod JD pins
		- SDA: 2
		- SCL: 1

### SPI (3)

- MIO SPI1 [10:13] (GPS)
	- Pmod JF pins
		- MOSI: 3
		- MISO: 4
		- SCLK: 7
		- SS: 8

Note: AXI SPI has been used instead of putting PS SPI0 through EMIO as it turned out to be too much of a hassle to get it working (multiple slave select lines and such with specific connection requirments for one slave master-mode).

- AXI SPI0 [:] (S-Band)
	- Pmod JD pins
		- MOSI: 4
		- MISO: 5
		- SCLK: 6
		- SS: 3

- AXI SPI1 (IRIS)
	- Pmod JC pins
		- MOSI: 3
		- MISO: 4
		- SCLK: 7
		- SS: 8

### UART (2)
- EMIO UART0 (DFGM)
	- Pmod JB pins
		- TX: 8
		- RX: 9
- AXI UART0 (UHF)
	- Pmod JB pins
		- TX: 4
		- RX: 7

### CAN (1)
- EMIO CAN0 [:] (ADCS & EPS)
	- Pmod JC pins 1:2
		- TX: 2
		- RX: 1

### GPIO

TBD


## IP Blocks:

TBD

## Troubleshooting

### Synthesis not using correct paths for certain IPs

When runnning design synthesis on a new machine it will, for some reason, get confused on where to find some files. Using the paths from the previously machine which causes the synthesis job to fail. 

To fix this, go to `Tools > Settings > IP` and either clear the cache or disable it.
