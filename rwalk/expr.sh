#!/bin/sh
if [ -z $1 ]; then
  T=10
else
  T=$1
fi

for x in `seq ${T}`
do 
  echo -n "2^$x: "
  python3 rw.py `echo 2^$x|bc` | tail -n1
done

