# Zybo Test OBC

This repository contains Vivado and Petaliux projects to setup a Zybo Z7-20 to reflect the interfaces on the Xiphos Q7 OBC so a test hardware environment is available.

## Requirements

- Xilinx Vivado 2022.2
- Petalinux 2022.2

## Interfaces

This project exposes the following interfaces to reflect those outlined in `EX3-ES OBC Hardware Configuration and Setup Document` `Interfaces` section found on the AlbertaSat google drive:

- MIO I2C0 [14:15] (Daedalus)
	- Pmod JF pins 9:10
- EMIO I2C1 [:] (Hyperion)
- AXI I2C0 [:] (S-Band)
- MIO SPI1 [10:12] (GPS)
	- Pmod JF pins 2:4
- AXI SPI0 [:] (S-Band)
- AXI SPI1 [:] (IRIS)
- EMIO CAN0 [:] (ADCS & EPS)
	- Pmod XX pins :
- EMIO UART0 [:] (DFGM)
	- Pmod XX pins :

## IP Blocks:

TBD

## Troubleshooting

### Synthesis not using correct paths for certain IPs

When runnning design synthesis on a new machine it will, for some reason, get confused on where to find some files. Using the paths from the previously machine which causes the synthesis job to fail. 

To fix this, go to `Tools > Settings > IP` and either clear the cache or disable it.
