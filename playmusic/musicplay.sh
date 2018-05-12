#!/usr/bin/bash
while :
do 
  python3 rand83.py 
  sfile=p.txt
  for x in `cat $sfile`
  do
    mpv --no-terminal $(sed -n ${x}p playlist.txt)
    sleep 1
  done
done
