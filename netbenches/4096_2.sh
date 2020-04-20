#!/bin/sh

IP_OCT4=2
IP_OCT3=0
for num in `seq  4093`
do
  ip link add link eth0 name vlan${num} type vlan id $num
  ip link set vlan${num} up
  ip addr flush dev  vlan${num}
  ip addr add 10.0.${IP_OCT3}.${IP_OCT4}/28 dev vlan${num}
  IP_OCT4=`expr $IP_OCT4 + 16`
  if [ $IP_OCT4 -gt 255 ]; then
    IP_OCT4=2
    IP_OCT3=`expr $IP_OCT3 + 1`
  fi
done
