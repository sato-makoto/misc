#!/bin/sh
# make new m3u file from illigal m3u file(oldlist)

if [ -z "$2" ]; then
  echo need two options.
  echo mkm3u.sh  oldlist newm3u
  exit 1
fi

M3U=$2
OLD="${1}"
ls *.ogg | sort -n > list
sed -n '1,2p' "${OLD}" > $M3U
sed -n '3,$p' "${OLD}"  | grep ^# > temp
num=`wc -l temp |awk '{print $1}'`

for x in `seq $num`
do 
   sed -n ${x}p temp >> $M3U
   sed -n ${x}p list >> $M3U
done

rm list temp
