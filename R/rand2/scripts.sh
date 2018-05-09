#!/bin/bash

if [ -z "$1" ]; then
  HEAD=bash
  echo "Number Times" > rand2.txt
  for num in `seq 100`; do  echo $num `expr $RANDOM % 100` >> rand2.txt; done
fi

if [ "$1" = "python3" ]; then
  HEAD=python3
  python3 rand.py > rand2.txt
fi

MP4=$HEAD-`date "+random-int-%Y-%m-%d"`

for lines in `seq 2 101`; do head -n $lines rand2.txt > $lines ; done
for file in `seq 2 101`; do Rscript ../graph_rand100.r $file ; done
for file in *.png; do convert $file `echo $file |sed s/png/jpg/`; done
bash ./enc.sh $MP4

mpv -loop-file ${MP4}.mp4

