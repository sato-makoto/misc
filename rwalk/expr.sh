#!/bin/sh
for x in `seq 16`
do 
  echo -n "2^$x: "
  python3 rw.py `echo 2^$x|bc` | tail -n1
done

