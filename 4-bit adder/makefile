TOPLEVEL_LANG ?= verilog
SIM ?= icarus
VERILOG_SOURCES = $(shell pwd)/adder.sv
TOPLEVEL := adder
MODULE   := adder_tb 

include $(shell cocotb-config --makefiles)/Makefile.sim
