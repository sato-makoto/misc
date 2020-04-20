#!/bin/sh
PO=5101
P1=5201
for x in `seq 20 25`
do
  echo "nuttcp -P $PO -p $P1 -r 192.168.100.2 >> $HOME/nut_wifi.txt" | \
   at -t 2017090111${x}
  sleep 1
done
