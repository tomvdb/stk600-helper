#!/bin/bash

	echo "*********************************************************************";
	echo "Load Arduino Bootloaded on atmega328";
	echo $0
	echo "*********************************************************************";

avrdude -c stk600 -P usb -p m328p -v -e -U flash:w:../Arduino/hardware/arduino/bootloaders/optiboot/optiboot_atmega328.hex -U lock:w:0x0F:m

