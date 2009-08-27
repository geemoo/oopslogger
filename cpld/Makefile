TARGET = main

PLATFORM := lin
XILINX := /home/opt/ise111/ISE
PATH := ${XILINX}/bin/${PLATFORM}:${PATH}
LMC_HOME := ${XILINX}/smartmodel/${PLATFORM}/installed_${PLATFORM}
LD_LIBRARY_PATH := ${XILINX}/lib/${PLATFORM}:${LD_LIBRARY_PATH}


all: $(TARGET).syr

sim:
	@echo $(LD_LIBRARY_PATH)
	$(XILINX)/bin/lin/unwrapped/fuse -intstyle xflow -incremental -lib uni9000_ver -lib aim_ver -lib cpld_ver -lib xilinxcorelib_ver -o unit_test1_isim_beh.exe -prj unit_test1_beh.prj unit_test1 glbl 

$(TARGET).syr: $(TARGET).v $(TARGET).xst
	xst -ifn $(TARGET).xst -ofn $(TARGET).syr -intstyle xflow

clean:
	rm -f $(TARGET).syr
