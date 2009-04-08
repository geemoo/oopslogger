# Makefile oriented towards compiling programs for atmel MCU's using opensource familiar tools
# make targets are: all, clean, write, debug

# The name of the finished binary
BINARY=at90usb

# the list of source files that you will be building.. space seperated
SOURCE=main.c

# the device we are compiling for eg: atmega8, atmega16, attiny11
TARGET=at90usb162 

# the type of programmer we are using.  See 'man avrdude' for a list of types
PROG=stk500v2

# the device that we are programming according to avrdude's naming scheme.. see 'man avrdude'
PROGTARGET=m8

# The MCU frequency.
CPUFREQ=8000000

# the device the programmer is attached to
PROGDEV=/dev/ttyS0

# end of configurables

HEX=${BINARY}.hex
OBJS=$(SOURCE:.c=.o)
GDBFILE=gdb.${BINARY}
CFLAGS=-g -DF_CPU=${CPUFREQ} -Wall
INCLUDE=-I/usr/local/AVR/avr/include/

.PHONY: all clean burn debug
all: ${BINARY} ${HEX}

${BINARY}: ${OBJS}
	avr-gcc ${CFLAGS} -mmcu=${TARGET} ${INCLUDE} -o $@ $^

${OBJS}: %.o: %.c
	avr-gcc ${CFLAGS} -mmcu=${TARGET} ${INCLUDE} -c $< -o $@

${HEX}: ${BINARY}
	avr-objcopy -O ihex $< $@

clean:
	rm -f ${OBJS} ${HEX} ${BINARY} ${GDBFILE}

write: ${HEX}
	avrdude -V -p ${PROGTARGET} -c ${PROG} -U flash:w:${HEX}:i -P ${PROGDEV}

debug: ${BINARY} ${HEX}
	@echo "file ${BINARY}" > ${GDBFILE}
	@echo "target remote localhost:1212" >> ${GDBFILE}
	@echo "load"        >> ${GDBFILE}
	@echo "break main"  >> ${GDBFILE}
	@echo "continue"    >> ${GDBFILE}
	avr-gdb -x ${GDBFILE}
