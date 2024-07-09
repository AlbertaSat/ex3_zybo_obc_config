--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
--Date        : Mon Jul  8 19:15:22 2024
--Host        : mothership running 64-bit Nobara release 37 (Thirty Seven)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    CAN_0_0_rx : in STD_LOGIC;
    CAN_0_0_tx : out STD_LOGIC;
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    IIC_0_scl_io : inout STD_LOGIC;
    IIC_0_sda_io : inout STD_LOGIC;
    IIC_1_0_scl_io : inout STD_LOGIC;
    IIC_1_0_sda_io : inout STD_LOGIC;
    SPI_0_0_io0_io : inout STD_LOGIC;
    SPI_0_0_io1_io : inout STD_LOGIC;
    SPI_0_0_sck_io : inout STD_LOGIC;
    SPI_0_0_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    SPI_0_1_io0_io : inout STD_LOGIC;
    SPI_0_1_io1_io : inout STD_LOGIC;
    SPI_0_1_sck_io : inout STD_LOGIC;
    SPI_0_1_ss_io : inout STD_LOGIC_VECTOR ( 0 to 0 );
    UART_0_rxd : in STD_LOGIC;
    UART_0_txd : out STD_LOGIC;
    UART_1_rxd : in STD_LOGIC;
    UART_1_txd : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    UART_0_txd : out STD_LOGIC;
    UART_0_rxd : in STD_LOGIC;
    IIC_0_scl_i : in STD_LOGIC;
    IIC_0_scl_o : out STD_LOGIC;
    IIC_0_scl_t : out STD_LOGIC;
    IIC_0_sda_i : in STD_LOGIC;
    IIC_0_sda_o : out STD_LOGIC;
    IIC_0_sda_t : out STD_LOGIC;
    CAN_0_0_tx : out STD_LOGIC;
    CAN_0_0_rx : in STD_LOGIC;
    IIC_1_0_sda_i : in STD_LOGIC;
    IIC_1_0_sda_o : out STD_LOGIC;
    IIC_1_0_sda_t : out STD_LOGIC;
    IIC_1_0_scl_i : in STD_LOGIC;
    IIC_1_0_scl_o : out STD_LOGIC;
    IIC_1_0_scl_t : out STD_LOGIC;
    SPI_0_1_io0_i : in STD_LOGIC;
    SPI_0_1_io0_o : out STD_LOGIC;
    SPI_0_1_io0_t : out STD_LOGIC;
    SPI_0_1_io1_i : in STD_LOGIC;
    SPI_0_1_io1_o : out STD_LOGIC;
    SPI_0_1_io1_t : out STD_LOGIC;
    SPI_0_1_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    SPI_0_1_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    SPI_0_1_ss_t : out STD_LOGIC;
    SPI_0_1_sck_i : in STD_LOGIC;
    SPI_0_1_sck_o : out STD_LOGIC;
    SPI_0_1_sck_t : out STD_LOGIC;
    UART_1_rxd : in STD_LOGIC;
    UART_1_txd : out STD_LOGIC;
    SPI_0_0_sck_i : in STD_LOGIC;
    SPI_0_0_sck_o : out STD_LOGIC;
    SPI_0_0_sck_t : out STD_LOGIC;
    SPI_0_0_io0_i : in STD_LOGIC;
    SPI_0_0_io0_o : out STD_LOGIC;
    SPI_0_0_io0_t : out STD_LOGIC;
    SPI_0_0_io1_i : in STD_LOGIC;
    SPI_0_0_io1_o : out STD_LOGIC;
    SPI_0_0_io1_t : out STD_LOGIC;
    SPI_0_0_ss_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    SPI_0_0_ss_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    SPI_0_0_ss_t : out STD_LOGIC
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal IIC_0_scl_i : STD_LOGIC;
  signal IIC_0_scl_o : STD_LOGIC;
  signal IIC_0_scl_t : STD_LOGIC;
  signal IIC_0_sda_i : STD_LOGIC;
  signal IIC_0_sda_o : STD_LOGIC;
  signal IIC_0_sda_t : STD_LOGIC;
  signal IIC_1_0_scl_i : STD_LOGIC;
  signal IIC_1_0_scl_o : STD_LOGIC;
  signal IIC_1_0_scl_t : STD_LOGIC;
  signal IIC_1_0_sda_i : STD_LOGIC;
  signal IIC_1_0_sda_o : STD_LOGIC;
  signal IIC_1_0_sda_t : STD_LOGIC;
  signal SPI_0_0_io0_i : STD_LOGIC;
  signal SPI_0_0_io0_o : STD_LOGIC;
  signal SPI_0_0_io0_t : STD_LOGIC;
  signal SPI_0_0_io1_i : STD_LOGIC;
  signal SPI_0_0_io1_o : STD_LOGIC;
  signal SPI_0_0_io1_t : STD_LOGIC;
  signal SPI_0_0_sck_i : STD_LOGIC;
  signal SPI_0_0_sck_o : STD_LOGIC;
  signal SPI_0_0_sck_t : STD_LOGIC;
  signal SPI_0_0_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SPI_0_0_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SPI_0_0_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SPI_0_0_ss_t : STD_LOGIC;
  signal SPI_0_1_io0_i : STD_LOGIC;
  signal SPI_0_1_io0_o : STD_LOGIC;
  signal SPI_0_1_io0_t : STD_LOGIC;
  signal SPI_0_1_io1_i : STD_LOGIC;
  signal SPI_0_1_io1_o : STD_LOGIC;
  signal SPI_0_1_io1_t : STD_LOGIC;
  signal SPI_0_1_sck_i : STD_LOGIC;
  signal SPI_0_1_sck_o : STD_LOGIC;
  signal SPI_0_1_sck_t : STD_LOGIC;
  signal SPI_0_1_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SPI_0_1_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SPI_0_1_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SPI_0_1_ss_t : STD_LOGIC;
begin
IIC_0_scl_iobuf: component IOBUF
     port map (
      I => IIC_0_scl_o,
      IO => IIC_0_scl_io,
      O => IIC_0_scl_i,
      T => IIC_0_scl_t
    );
IIC_0_sda_iobuf: component IOBUF
     port map (
      I => IIC_0_sda_o,
      IO => IIC_0_sda_io,
      O => IIC_0_sda_i,
      T => IIC_0_sda_t
    );
IIC_1_0_scl_iobuf: component IOBUF
     port map (
      I => IIC_1_0_scl_o,
      IO => IIC_1_0_scl_io,
      O => IIC_1_0_scl_i,
      T => IIC_1_0_scl_t
    );
IIC_1_0_sda_iobuf: component IOBUF
     port map (
      I => IIC_1_0_sda_o,
      IO => IIC_1_0_sda_io,
      O => IIC_1_0_sda_i,
      T => IIC_1_0_sda_t
    );
SPI_0_0_io0_iobuf: component IOBUF
     port map (
      I => SPI_0_0_io0_o,
      IO => SPI_0_0_io0_io,
      O => SPI_0_0_io0_i,
      T => SPI_0_0_io0_t
    );
SPI_0_0_io1_iobuf: component IOBUF
     port map (
      I => SPI_0_0_io1_o,
      IO => SPI_0_0_io1_io,
      O => SPI_0_0_io1_i,
      T => SPI_0_0_io1_t
    );
SPI_0_0_sck_iobuf: component IOBUF
     port map (
      I => SPI_0_0_sck_o,
      IO => SPI_0_0_sck_io,
      O => SPI_0_0_sck_i,
      T => SPI_0_0_sck_t
    );
SPI_0_0_ss_iobuf_0: component IOBUF
     port map (
      I => SPI_0_0_ss_o_0(0),
      IO => SPI_0_0_ss_io(0),
      O => SPI_0_0_ss_i_0(0),
      T => SPI_0_0_ss_t
    );
SPI_0_1_io0_iobuf: component IOBUF
     port map (
      I => SPI_0_1_io0_o,
      IO => SPI_0_1_io0_io,
      O => SPI_0_1_io0_i,
      T => SPI_0_1_io0_t
    );
SPI_0_1_io1_iobuf: component IOBUF
     port map (
      I => SPI_0_1_io1_o,
      IO => SPI_0_1_io1_io,
      O => SPI_0_1_io1_i,
      T => SPI_0_1_io1_t
    );
SPI_0_1_sck_iobuf: component IOBUF
     port map (
      I => SPI_0_1_sck_o,
      IO => SPI_0_1_sck_io,
      O => SPI_0_1_sck_i,
      T => SPI_0_1_sck_t
    );
SPI_0_1_ss_iobuf_0: component IOBUF
     port map (
      I => SPI_0_1_ss_o_0(0),
      IO => SPI_0_1_ss_io(0),
      O => SPI_0_1_ss_i_0(0),
      T => SPI_0_1_ss_t
    );
design_1_i: component design_1
     port map (
      CAN_0_0_rx => CAN_0_0_rx,
      CAN_0_0_tx => CAN_0_0_tx,
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      IIC_0_scl_i => IIC_0_scl_i,
      IIC_0_scl_o => IIC_0_scl_o,
      IIC_0_scl_t => IIC_0_scl_t,
      IIC_0_sda_i => IIC_0_sda_i,
      IIC_0_sda_o => IIC_0_sda_o,
      IIC_0_sda_t => IIC_0_sda_t,
      IIC_1_0_scl_i => IIC_1_0_scl_i,
      IIC_1_0_scl_o => IIC_1_0_scl_o,
      IIC_1_0_scl_t => IIC_1_0_scl_t,
      IIC_1_0_sda_i => IIC_1_0_sda_i,
      IIC_1_0_sda_o => IIC_1_0_sda_o,
      IIC_1_0_sda_t => IIC_1_0_sda_t,
      SPI_0_0_io0_i => SPI_0_0_io0_i,
      SPI_0_0_io0_o => SPI_0_0_io0_o,
      SPI_0_0_io0_t => SPI_0_0_io0_t,
      SPI_0_0_io1_i => SPI_0_0_io1_i,
      SPI_0_0_io1_o => SPI_0_0_io1_o,
      SPI_0_0_io1_t => SPI_0_0_io1_t,
      SPI_0_0_sck_i => SPI_0_0_sck_i,
      SPI_0_0_sck_o => SPI_0_0_sck_o,
      SPI_0_0_sck_t => SPI_0_0_sck_t,
      SPI_0_0_ss_i(0) => SPI_0_0_ss_i_0(0),
      SPI_0_0_ss_o(0) => SPI_0_0_ss_o_0(0),
      SPI_0_0_ss_t => SPI_0_0_ss_t,
      SPI_0_1_io0_i => SPI_0_1_io0_i,
      SPI_0_1_io0_o => SPI_0_1_io0_o,
      SPI_0_1_io0_t => SPI_0_1_io0_t,
      SPI_0_1_io1_i => SPI_0_1_io1_i,
      SPI_0_1_io1_o => SPI_0_1_io1_o,
      SPI_0_1_io1_t => SPI_0_1_io1_t,
      SPI_0_1_sck_i => SPI_0_1_sck_i,
      SPI_0_1_sck_o => SPI_0_1_sck_o,
      SPI_0_1_sck_t => SPI_0_1_sck_t,
      SPI_0_1_ss_i(0) => SPI_0_1_ss_i_0(0),
      SPI_0_1_ss_o(0) => SPI_0_1_ss_o_0(0),
      SPI_0_1_ss_t => SPI_0_1_ss_t,
      UART_0_rxd => UART_0_rxd,
      UART_0_txd => UART_0_txd,
      UART_1_rxd => UART_1_rxd,
      UART_1_txd => UART_1_txd
    );
end STRUCTURE;
