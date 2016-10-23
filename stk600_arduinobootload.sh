#!/bin/bash

	echo "*********************************************************************";
	echo "Load Arduino Bootloaded on atmega328";
	echo $0
	echo "*********************************************************************";

avrdude -c stk600 -P usb -p m328p -v -e -U efuse:w:0x05:m -U hfuse:w:0xD6:m -U lfuse:w:0xFF:m
avrdude -c stk600 -P usb -p m328p -v -e -U flash:w:optiboot_atmega328.hex -U lock:w:0x0F:m

