#!/bin/bash

if (( $# != 1 ))
then
	echo "*********************************************************************";
	echo "Connect to AVRDude Terminal";
	echo $0 " <AVRDUDE PARTNUMBER>";
	echo "*********************************************************************";
  exit 1
fi

avrdude -c stk600 -P usb -p $1 -t
