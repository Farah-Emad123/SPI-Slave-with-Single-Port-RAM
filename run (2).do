
vlib work


vlog RAM.v
vlog spi_slave.v
vlog top.v
vlog tp1.v


vsim -voptargs=+acc work.TOP_SPI_tb

add wave *


run -all

wave zoom full
