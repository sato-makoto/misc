#!/bin/sh
iw  wlan0 interface add mon0 type monitor
# cd /home/pi/work/src/horst
horst -i mon0
