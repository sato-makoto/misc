#!/bin/sh
# compare two files timestamp

if [ -z $1 ]; then
	echo No files.
	exit 2
fi

if [ -z $2 ]; then
	echo No second file.
	exit 1
fi

min=60
hour=$(echo $min*60|bc)
day=$(echo $hour*24|bc)
year=$(echo $day*365 | bc)

ffile=$1
sfile=$2
twofile () {
	ls -lh --full-time $ffile | awk '{print $6, $7, $9}'
	ls -lh --full-time $sfile | awk '{print $6, $7 ,$9}'
}


ftime=$(date --date "$(ls $1 --full-time | awk '{print $6, $7}')" "+%s")
stime=$(date --date "$(ls $2 --full-time | awk '{print $6, $7}')" "+%s")


if [ $ftime -eq $stime ]; then
	echo Same.
	exit 0 
fi

if [ $ftime -gt $stime ]; then
	comp=$(echo $ftime - $stime | bc) 
else
	comp=$(echo $stime - $ftime | bc) 
fi

if [ $comp -ge $year ]; then
	y=$(echo "$comp/$year" | bc)
	d=$(echo "$comp%$year/$day"|bc)
else
	d=$(echo "$comp%$year/$day"|bc)
fi


if [ $comp -ge $year ]; then
	twofile
	echo  $y 年 $d 日の差があります
	exit 0
fi
if [ $comp -ge $day ]; then
	twofile
	echo "`echo $comp/$day|bc`" 日の差があります。
	exit 0
fi
if [ $comp -ge $hour ]; then
	twofile
	h=`echo $comp/$hour|bc`
	m=`echo $comp%$hour/$min|bc`
	s=`echo $comp%$hour%$min|bc`
	echo $h 時間 $m 分 $s 秒の差があります。
	exit 0
fi
if [ $comp -ge $min ]; then
	twofile
	m=`echo $comp/$min|bc`
	s=`echo $comp%$min|bc`
	echo %m 分 $s 秒の差があります。
	exit 0
fi
if [ $comp -lt $min ]; then
	twofile
	echo  $comp 秒の差があります。
	exit 0
fi
