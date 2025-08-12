--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
--Date        : Tue Aug 12 13:58:04 2025
--Host        : mothership running 64-bit Nobara Linux 42 (Workstation Edition)
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
    DB_I2C_scl_io : inout STD_LOGIC;
    DB_I2C_sda_io : inout STD_LOGIC;
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
    DFGM_UART_rxd : in STD_LOGIC;
    DFGM_UART_txd : out STD_LOGIC;
    EMIO_GPIO_tri_io : inout STD_LOGIC_VECTOR ( 24 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    GPS_UART_rxd : in STD_LOGIC;
    GPS_UART_txd : out STD_LOGIC;
    HERACLES_UART_rxd : in STD_LOGIC;
    HERACLES_UART_txd : out STD_LOGIC;
    SBAND_I2C_scl_io : inout STD_LOGIC;
    SBAND_I2C_sda_io : inout STD_LOGIC;
    SBAND_SPI_MISO_I : in STD_LOGIC;
    SBAND_SPI_MOSI_O : out STD_LOGIC;
    SBAND_SPI_SCLK_O : out STD_LOGIC;
    SBAND_SPI_SS_O : out STD_LOGIC
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
    SBAND_I2C_scl_i : in STD_LOGIC;
    SBAND_I2C_scl_o : out STD_LOGIC;
    SBAND_I2C_scl_t : out STD_LOGIC;
    SBAND_I2C_sda_i : in STD_LOGIC;
    SBAND_I2C_sda_o : out STD_LOGIC;
    SBAND_I2C_sda_t : out STD_LOGIC;
    DB_I2C_sda_i : in STD_LOGIC;
    DB_I2C_sda_o : out STD_LOGIC;
    DB_I2C_sda_t : out STD_LOGIC;
    DB_I2C_scl_i : in STD_LOGIC;
    DB_I2C_scl_o : out STD_LOGIC;
    DB_I2C_scl_t : out STD_LOGIC;
    GPS_UART_rxd : in STD_LOGIC;
    GPS_UART_txd : out STD_LOGIC;
    DFGM_UART_rxd : in STD_LOGIC;
    DFGM_UART_txd : out STD_LOGIC;
    EMIO_GPIO_tri_i : in STD_LOGIC_VECTOR ( 24 downto 0 );
    EMIO_GPIO_tri_o : out STD_LOGIC_VECTOR ( 24 downto 0 );
    EMIO_GPIO_tri_t : out STD_LOGIC_VECTOR ( 24 downto 0 );
    HERACLES_UART_rxd : in STD_LOGIC;
    HERACLES_UART_txd : out STD_LOGIC;
    SBAND_SPI_SCLK_O : out STD_LOGIC;
    SBAND_SPI_MOSI_O : out STD_LOGIC;
    SBAND_SPI_MISO_I : in STD_LOGIC;
    SBAND_SPI_SS_O : out STD_LOGIC
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
  signal DB_I2C_scl_i : STD_LOGIC;
  signal DB_I2C_scl_o : STD_LOGIC;
  signal DB_I2C_scl_t : STD_LOGIC;
  signal DB_I2C_sda_i : STD_LOGIC;
  signal DB_I2C_sda_o : STD_LOGIC;
  signal DB_I2C_sda_t : STD_LOGIC;
  signal EMIO_GPIO_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal EMIO_GPIO_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal EMIO_GPIO_tri_i_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal EMIO_GPIO_tri_i_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal EMIO_GPIO_tri_i_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal EMIO_GPIO_tri_i_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal EMIO_GPIO_tri_i_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal EMIO_GPIO_tri_i_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal EMIO_GPIO_tri_i_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal EMIO_GPIO_tri_i_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal EMIO_GPIO_tri_i_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal EMIO_GPIO_tri_i_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal EMIO_GPIO_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal EMIO_GPIO_tri_i_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal EMIO_GPIO_tri_i_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal EMIO_GPIO_tri_i_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal EMIO_GPIO_tri_i_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal EMIO_GPIO_tri_i_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal EMIO_GPIO_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal EMIO_GPIO_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal EMIO_GPIO_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal EMIO_GPIO_tri_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal EMIO_GPIO_tri_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal EMIO_GPIO_tri_i_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal EMIO_GPIO_tri_i_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal EMIO_GPIO_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal EMIO_GPIO_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal EMIO_GPIO_tri_io_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal EMIO_GPIO_tri_io_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal EMIO_GPIO_tri_io_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal EMIO_GPIO_tri_io_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal EMIO_GPIO_tri_io_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal EMIO_GPIO_tri_io_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal EMIO_GPIO_tri_io_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal EMIO_GPIO_tri_io_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal EMIO_GPIO_tri_io_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal EMIO_GPIO_tri_io_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal EMIO_GPIO_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal EMIO_GPIO_tri_io_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal EMIO_GPIO_tri_io_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal EMIO_GPIO_tri_io_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal EMIO_GPIO_tri_io_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal EMIO_GPIO_tri_io_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal EMIO_GPIO_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal EMIO_GPIO_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal EMIO_GPIO_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal EMIO_GPIO_tri_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal EMIO_GPIO_tri_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal EMIO_GPIO_tri_io_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal EMIO_GPIO_tri_io_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal EMIO_GPIO_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal EMIO_GPIO_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal EMIO_GPIO_tri_o_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal EMIO_GPIO_tri_o_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal EMIO_GPIO_tri_o_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal EMIO_GPIO_tri_o_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal EMIO_GPIO_tri_o_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal EMIO_GPIO_tri_o_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal EMIO_GPIO_tri_o_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal EMIO_GPIO_tri_o_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal EMIO_GPIO_tri_o_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal EMIO_GPIO_tri_o_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal EMIO_GPIO_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal EMIO_GPIO_tri_o_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal EMIO_GPIO_tri_o_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal EMIO_GPIO_tri_o_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal EMIO_GPIO_tri_o_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal EMIO_GPIO_tri_o_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal EMIO_GPIO_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal EMIO_GPIO_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal EMIO_GPIO_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal EMIO_GPIO_tri_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal EMIO_GPIO_tri_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal EMIO_GPIO_tri_o_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal EMIO_GPIO_tri_o_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal EMIO_GPIO_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal EMIO_GPIO_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal EMIO_GPIO_tri_t_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal EMIO_GPIO_tri_t_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal EMIO_GPIO_tri_t_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal EMIO_GPIO_tri_t_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal EMIO_GPIO_tri_t_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal EMIO_GPIO_tri_t_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal EMIO_GPIO_tri_t_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal EMIO_GPIO_tri_t_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal EMIO_GPIO_tri_t_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal EMIO_GPIO_tri_t_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal EMIO_GPIO_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal EMIO_GPIO_tri_t_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal EMIO_GPIO_tri_t_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal EMIO_GPIO_tri_t_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal EMIO_GPIO_tri_t_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal EMIO_GPIO_tri_t_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal EMIO_GPIO_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal EMIO_GPIO_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal EMIO_GPIO_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal EMIO_GPIO_tri_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal EMIO_GPIO_tri_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal EMIO_GPIO_tri_t_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal EMIO_GPIO_tri_t_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal SBAND_I2C_scl_i : STD_LOGIC;
  signal SBAND_I2C_scl_o : STD_LOGIC;
  signal SBAND_I2C_scl_t : STD_LOGIC;
  signal SBAND_I2C_sda_i : STD_LOGIC;
  signal SBAND_I2C_sda_o : STD_LOGIC;
  signal SBAND_I2C_sda_t : STD_LOGIC;
begin
DB_I2C_scl_iobuf: component IOBUF
     port map (
      I => DB_I2C_scl_o,
      IO => DB_I2C_scl_io,
      O => DB_I2C_scl_i,
      T => DB_I2C_scl_t
    );
DB_I2C_sda_iobuf: component IOBUF
     port map (
      I => DB_I2C_sda_o,
      IO => DB_I2C_sda_io,
      O => DB_I2C_sda_i,
      T => DB_I2C_sda_t
    );
EMIO_GPIO_tri_iobuf_0: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_0(0),
      IO => EMIO_GPIO_tri_io(0),
      O => EMIO_GPIO_tri_i_0(0),
      T => EMIO_GPIO_tri_t_0(0)
    );
EMIO_GPIO_tri_iobuf_1: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_1(1),
      IO => EMIO_GPIO_tri_io(1),
      O => EMIO_GPIO_tri_i_1(1),
      T => EMIO_GPIO_tri_t_1(1)
    );
EMIO_GPIO_tri_iobuf_10: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_10(10),
      IO => EMIO_GPIO_tri_io(10),
      O => EMIO_GPIO_tri_i_10(10),
      T => EMIO_GPIO_tri_t_10(10)
    );
EMIO_GPIO_tri_iobuf_11: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_11(11),
      IO => EMIO_GPIO_tri_io(11),
      O => EMIO_GPIO_tri_i_11(11),
      T => EMIO_GPIO_tri_t_11(11)
    );
EMIO_GPIO_tri_iobuf_12: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_12(12),
      IO => EMIO_GPIO_tri_io(12),
      O => EMIO_GPIO_tri_i_12(12),
      T => EMIO_GPIO_tri_t_12(12)
    );
EMIO_GPIO_tri_iobuf_13: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_13(13),
      IO => EMIO_GPIO_tri_io(13),
      O => EMIO_GPIO_tri_i_13(13),
      T => EMIO_GPIO_tri_t_13(13)
    );
EMIO_GPIO_tri_iobuf_14: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_14(14),
      IO => EMIO_GPIO_tri_io(14),
      O => EMIO_GPIO_tri_i_14(14),
      T => EMIO_GPIO_tri_t_14(14)
    );
EMIO_GPIO_tri_iobuf_15: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_15(15),
      IO => EMIO_GPIO_tri_io(15),
      O => EMIO_GPIO_tri_i_15(15),
      T => EMIO_GPIO_tri_t_15(15)
    );
EMIO_GPIO_tri_iobuf_16: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_16(16),
      IO => EMIO_GPIO_tri_io(16),
      O => EMIO_GPIO_tri_i_16(16),
      T => EMIO_GPIO_tri_t_16(16)
    );
EMIO_GPIO_tri_iobuf_17: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_17(17),
      IO => EMIO_GPIO_tri_io(17),
      O => EMIO_GPIO_tri_i_17(17),
      T => EMIO_GPIO_tri_t_17(17)
    );
EMIO_GPIO_tri_iobuf_18: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_18(18),
      IO => EMIO_GPIO_tri_io(18),
      O => EMIO_GPIO_tri_i_18(18),
      T => EMIO_GPIO_tri_t_18(18)
    );
EMIO_GPIO_tri_iobuf_19: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_19(19),
      IO => EMIO_GPIO_tri_io(19),
      O => EMIO_GPIO_tri_i_19(19),
      T => EMIO_GPIO_tri_t_19(19)
    );
EMIO_GPIO_tri_iobuf_2: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_2(2),
      IO => EMIO_GPIO_tri_io(2),
      O => EMIO_GPIO_tri_i_2(2),
      T => EMIO_GPIO_tri_t_2(2)
    );
EMIO_GPIO_tri_iobuf_20: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_20(20),
      IO => EMIO_GPIO_tri_io(20),
      O => EMIO_GPIO_tri_i_20(20),
      T => EMIO_GPIO_tri_t_20(20)
    );
EMIO_GPIO_tri_iobuf_21: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_21(21),
      IO => EMIO_GPIO_tri_io(21),
      O => EMIO_GPIO_tri_i_21(21),
      T => EMIO_GPIO_tri_t_21(21)
    );
EMIO_GPIO_tri_iobuf_22: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_22(22),
      IO => EMIO_GPIO_tri_io(22),
      O => EMIO_GPIO_tri_i_22(22),
      T => EMIO_GPIO_tri_t_22(22)
    );
EMIO_GPIO_tri_iobuf_23: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_23(23),
      IO => EMIO_GPIO_tri_io(23),
      O => EMIO_GPIO_tri_i_23(23),
      T => EMIO_GPIO_tri_t_23(23)
    );
EMIO_GPIO_tri_iobuf_24: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_24(24),
      IO => EMIO_GPIO_tri_io(24),
      O => EMIO_GPIO_tri_i_24(24),
      T => EMIO_GPIO_tri_t_24(24)
    );
EMIO_GPIO_tri_iobuf_3: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_3(3),
      IO => EMIO_GPIO_tri_io(3),
      O => EMIO_GPIO_tri_i_3(3),
      T => EMIO_GPIO_tri_t_3(3)
    );
EMIO_GPIO_tri_iobuf_4: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_4(4),
      IO => EMIO_GPIO_tri_io(4),
      O => EMIO_GPIO_tri_i_4(4),
      T => EMIO_GPIO_tri_t_4(4)
    );
EMIO_GPIO_tri_iobuf_5: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_5(5),
      IO => EMIO_GPIO_tri_io(5),
      O => EMIO_GPIO_tri_i_5(5),
      T => EMIO_GPIO_tri_t_5(5)
    );
EMIO_GPIO_tri_iobuf_6: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_6(6),
      IO => EMIO_GPIO_tri_io(6),
      O => EMIO_GPIO_tri_i_6(6),
      T => EMIO_GPIO_tri_t_6(6)
    );
EMIO_GPIO_tri_iobuf_7: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_7(7),
      IO => EMIO_GPIO_tri_io(7),
      O => EMIO_GPIO_tri_i_7(7),
      T => EMIO_GPIO_tri_t_7(7)
    );
EMIO_GPIO_tri_iobuf_8: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_8(8),
      IO => EMIO_GPIO_tri_io(8),
      O => EMIO_GPIO_tri_i_8(8),
      T => EMIO_GPIO_tri_t_8(8)
    );
EMIO_GPIO_tri_iobuf_9: component IOBUF
     port map (
      I => EMIO_GPIO_tri_o_9(9),
      IO => EMIO_GPIO_tri_io(9),
      O => EMIO_GPIO_tri_i_9(9),
      T => EMIO_GPIO_tri_t_9(9)
    );
SBAND_I2C_scl_iobuf: component IOBUF
     port map (
      I => SBAND_I2C_scl_o,
      IO => SBAND_I2C_scl_io,
      O => SBAND_I2C_scl_i,
      T => SBAND_I2C_scl_t
    );
SBAND_I2C_sda_iobuf: component IOBUF
     port map (
      I => SBAND_I2C_sda_o,
      IO => SBAND_I2C_sda_io,
      O => SBAND_I2C_sda_i,
      T => SBAND_I2C_sda_t
    );
design_1_i: component design_1
     port map (
      DB_I2C_scl_i => DB_I2C_scl_i,
      DB_I2C_scl_o => DB_I2C_scl_o,
      DB_I2C_scl_t => DB_I2C_scl_t,
      DB_I2C_sda_i => DB_I2C_sda_i,
      DB_I2C_sda_o => DB_I2C_sda_o,
      DB_I2C_sda_t => DB_I2C_sda_t,
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
      DFGM_UART_rxd => DFGM_UART_rxd,
      DFGM_UART_txd => DFGM_UART_txd,
      EMIO_GPIO_tri_i(24) => EMIO_GPIO_tri_i_24(24),
      EMIO_GPIO_tri_i(23) => EMIO_GPIO_tri_i_23(23),
      EMIO_GPIO_tri_i(22) => EMIO_GPIO_tri_i_22(22),
      EMIO_GPIO_tri_i(21) => EMIO_GPIO_tri_i_21(21),
      EMIO_GPIO_tri_i(20) => EMIO_GPIO_tri_i_20(20),
      EMIO_GPIO_tri_i(19) => EMIO_GPIO_tri_i_19(19),
      EMIO_GPIO_tri_i(18) => EMIO_GPIO_tri_i_18(18),
      EMIO_GPIO_tri_i(17) => EMIO_GPIO_tri_i_17(17),
      EMIO_GPIO_tri_i(16) => EMIO_GPIO_tri_i_16(16),
      EMIO_GPIO_tri_i(15) => EMIO_GPIO_tri_i_15(15),
      EMIO_GPIO_tri_i(14) => EMIO_GPIO_tri_i_14(14),
      EMIO_GPIO_tri_i(13) => EMIO_GPIO_tri_i_13(13),
      EMIO_GPIO_tri_i(12) => EMIO_GPIO_tri_i_12(12),
      EMIO_GPIO_tri_i(11) => EMIO_GPIO_tri_i_11(11),
      EMIO_GPIO_tri_i(10) => EMIO_GPIO_tri_i_10(10),
      EMIO_GPIO_tri_i(9) => EMIO_GPIO_tri_i_9(9),
      EMIO_GPIO_tri_i(8) => EMIO_GPIO_tri_i_8(8),
      EMIO_GPIO_tri_i(7) => EMIO_GPIO_tri_i_7(7),
      EMIO_GPIO_tri_i(6) => EMIO_GPIO_tri_i_6(6),
      EMIO_GPIO_tri_i(5) => EMIO_GPIO_tri_i_5(5),
      EMIO_GPIO_tri_i(4) => EMIO_GPIO_tri_i_4(4),
      EMIO_GPIO_tri_i(3) => EMIO_GPIO_tri_i_3(3),
      EMIO_GPIO_tri_i(2) => EMIO_GPIO_tri_i_2(2),
      EMIO_GPIO_tri_i(1) => EMIO_GPIO_tri_i_1(1),
      EMIO_GPIO_tri_i(0) => EMIO_GPIO_tri_i_0(0),
      EMIO_GPIO_tri_o(24) => EMIO_GPIO_tri_o_24(24),
      EMIO_GPIO_tri_o(23) => EMIO_GPIO_tri_o_23(23),
      EMIO_GPIO_tri_o(22) => EMIO_GPIO_tri_o_22(22),
      EMIO_GPIO_tri_o(21) => EMIO_GPIO_tri_o_21(21),
      EMIO_GPIO_tri_o(20) => EMIO_GPIO_tri_o_20(20),
      EMIO_GPIO_tri_o(19) => EMIO_GPIO_tri_o_19(19),
      EMIO_GPIO_tri_o(18) => EMIO_GPIO_tri_o_18(18),
      EMIO_GPIO_tri_o(17) => EMIO_GPIO_tri_o_17(17),
      EMIO_GPIO_tri_o(16) => EMIO_GPIO_tri_o_16(16),
      EMIO_GPIO_tri_o(15) => EMIO_GPIO_tri_o_15(15),
      EMIO_GPIO_tri_o(14) => EMIO_GPIO_tri_o_14(14),
      EMIO_GPIO_tri_o(13) => EMIO_GPIO_tri_o_13(13),
      EMIO_GPIO_tri_o(12) => EMIO_GPIO_tri_o_12(12),
      EMIO_GPIO_tri_o(11) => EMIO_GPIO_tri_o_11(11),
      EMIO_GPIO_tri_o(10) => EMIO_GPIO_tri_o_10(10),
      EMIO_GPIO_tri_o(9) => EMIO_GPIO_tri_o_9(9),
      EMIO_GPIO_tri_o(8) => EMIO_GPIO_tri_o_8(8),
      EMIO_GPIO_tri_o(7) => EMIO_GPIO_tri_o_7(7),
      EMIO_GPIO_tri_o(6) => EMIO_GPIO_tri_o_6(6),
      EMIO_GPIO_tri_o(5) => EMIO_GPIO_tri_o_5(5),
      EMIO_GPIO_tri_o(4) => EMIO_GPIO_tri_o_4(4),
      EMIO_GPIO_tri_o(3) => EMIO_GPIO_tri_o_3(3),
      EMIO_GPIO_tri_o(2) => EMIO_GPIO_tri_o_2(2),
      EMIO_GPIO_tri_o(1) => EMIO_GPIO_tri_o_1(1),
      EMIO_GPIO_tri_o(0) => EMIO_GPIO_tri_o_0(0),
      EMIO_GPIO_tri_t(24) => EMIO_GPIO_tri_t_24(24),
      EMIO_GPIO_tri_t(23) => EMIO_GPIO_tri_t_23(23),
      EMIO_GPIO_tri_t(22) => EMIO_GPIO_tri_t_22(22),
      EMIO_GPIO_tri_t(21) => EMIO_GPIO_tri_t_21(21),
      EMIO_GPIO_tri_t(20) => EMIO_GPIO_tri_t_20(20),
      EMIO_GPIO_tri_t(19) => EMIO_GPIO_tri_t_19(19),
      EMIO_GPIO_tri_t(18) => EMIO_GPIO_tri_t_18(18),
      EMIO_GPIO_tri_t(17) => EMIO_GPIO_tri_t_17(17),
      EMIO_GPIO_tri_t(16) => EMIO_GPIO_tri_t_16(16),
      EMIO_GPIO_tri_t(15) => EMIO_GPIO_tri_t_15(15),
      EMIO_GPIO_tri_t(14) => EMIO_GPIO_tri_t_14(14),
      EMIO_GPIO_tri_t(13) => EMIO_GPIO_tri_t_13(13),
      EMIO_GPIO_tri_t(12) => EMIO_GPIO_tri_t_12(12),
      EMIO_GPIO_tri_t(11) => EMIO_GPIO_tri_t_11(11),
      EMIO_GPIO_tri_t(10) => EMIO_GPIO_tri_t_10(10),
      EMIO_GPIO_tri_t(9) => EMIO_GPIO_tri_t_9(9),
      EMIO_GPIO_tri_t(8) => EMIO_GPIO_tri_t_8(8),
      EMIO_GPIO_tri_t(7) => EMIO_GPIO_tri_t_7(7),
      EMIO_GPIO_tri_t(6) => EMIO_GPIO_tri_t_6(6),
      EMIO_GPIO_tri_t(5) => EMIO_GPIO_tri_t_5(5),
      EMIO_GPIO_tri_t(4) => EMIO_GPIO_tri_t_4(4),
      EMIO_GPIO_tri_t(3) => EMIO_GPIO_tri_t_3(3),
      EMIO_GPIO_tri_t(2) => EMIO_GPIO_tri_t_2(2),
      EMIO_GPIO_tri_t(1) => EMIO_GPIO_tri_t_1(1),
      EMIO_GPIO_tri_t(0) => EMIO_GPIO_tri_t_0(0),
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      GPS_UART_rxd => GPS_UART_rxd,
      GPS_UART_txd => GPS_UART_txd,
      HERACLES_UART_rxd => HERACLES_UART_rxd,
      HERACLES_UART_txd => HERACLES_UART_txd,
      SBAND_I2C_scl_i => SBAND_I2C_scl_i,
      SBAND_I2C_scl_o => SBAND_I2C_scl_o,
      SBAND_I2C_scl_t => SBAND_I2C_scl_t,
      SBAND_I2C_sda_i => SBAND_I2C_sda_i,
      SBAND_I2C_sda_o => SBAND_I2C_sda_o,
      SBAND_I2C_sda_t => SBAND_I2C_sda_t,
      SBAND_SPI_MISO_I => SBAND_SPI_MISO_I,
      SBAND_SPI_MOSI_O => SBAND_SPI_MOSI_O,
      SBAND_SPI_SCLK_O => SBAND_SPI_SCLK_O,
      SBAND_SPI_SS_O => SBAND_SPI_SS_O
    );
end STRUCTURE;
