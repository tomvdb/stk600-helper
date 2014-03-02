#!/bin/bash

if (( $# != 1 ))
then
	echo "*********************************************************************";
	echo "Test STK600 Connection";
	echo $0 " <AVRDUDE PARTNUMBER>";
	echo "*********************************************************************";
  exit 1
fi

avrdude -c stk600 -P usb -p $1
