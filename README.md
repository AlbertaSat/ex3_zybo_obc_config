# Zybo Test OBC

This repository contains Vivado and Petaliux projects to setup a Zybo Z7-20 to reflect the interfaces on the Xiphos Q7 OBC so a test hardware environment is available.

When cloning, you need to ensure submodules are also cloned using:

```bash
# Creating new clone
git clone --recurse-submodules https://github.com/albertasat/ex3_zybo_obc_config
# Already cloned repository
git submodule init
git submodule update
```

## Requirements

- Xilinx Vivado 2022.2

## Exports

Semantic versioning of all exports is required. The resulting export name should be zybo_obc_vMAJOR.MINOR.PATCH[-branch] and be placed in the exports directory. Ensure that they are added to the repository.

## Interfaces

> **WARNING**: This interface list is out of date for the iris-comms-testing branch. For correct interface pins, please refer to the [constraints file](zybo_obc.srcs/constrs_1/new/Zybo-Z7.xdc) and cross reference the PACKAGE_PIN to table 16.1 in the [Zybo Pmod reference](https://digilent.com/reference/programmable-logic/zybo-z7/reference-manual?redirect=1#pmod_ports).

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
		- MOSI: 2
		- MISO: 3
		- SCLK: 4
		- SS: 1

Note: AXI SPI has been used instead of putting PS SPI0 through EMIO as it turned out to be too much of a hassle to get it working (multiple slave select lines and such with specific connection requirments for one slave master-mode).

- AXI SPI0 [:] (S-Band)
	- Pmod JD pins
		- MOSI: 3
		- MISO: 4
		- SCLK: 7
		- SS: 8

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

16 GPIO pins

Pmod JE -> GPIO_0[0:7]
Pmod JA -> GPIO_0[8:15]


## IP Blocks:

TBD

## Troubleshooting

### Synthesis not using correct paths for certain IPs

When runnning design synthesis on a new machine it will, for some reason, get confused on where to find some files. Using the paths from the previously machine which causes the synthesis job to fail. 

To fix this, go to `Tools > Settings > IP` and either clear the cache or disable it.

### Cleaning

When switching between branches, make sure to clean any ignored files after switch to avoid any issues:

```bash
git
```
