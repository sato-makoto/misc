#!/bin/sh

echo "Time Second" > second
echo "Time Second" > real
for num in `awk -F',' -f get.awk typescript`
do echo $num | bc
done |cat -n >> second 

seq `tail -n2 second | head -n1 | awk '{print $1}'` -1 0  | cat -n >> real

