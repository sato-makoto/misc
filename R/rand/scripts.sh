#!/bin/bash

if [ -z "$1" ]; then
  HEAD=bash
  for num in `seq 10000`; do  echo `expr $RANDOM % 100` >> random.txt; done
  echo "Number Times" > rand2.txt
  sort random.txt | uniq -c | awk '{print $2, $1}'| sort -n >> temp.txt
  cat temp.txt >>rand2.txt
fi

if [ "$1" = "python3" ]; then
  HEAD=python3
  python3 rand100.py > rand2.txt
fi

MP4=$HEAD-`date "+random-%Y-%m-%d"`

for lines in `seq 2 101`; do head -n $lines rand2.txt > $lines ; done
for file in `seq 2 101`; do Rscript ../rand_move.r $file; done
for file in *.png; do convert $file `echo $file |sed s/png/jpg/`; done
bash ./enc.sh $MP4

mpv -loop-file ${MP4}.mp4

