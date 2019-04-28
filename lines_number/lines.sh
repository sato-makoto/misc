#!/bin/sh

last_num=$1
echo 'node line'
for x in `seq $last_num`
do 	echo $x `echo "$x * ($x-1)/2"| bc `
done
