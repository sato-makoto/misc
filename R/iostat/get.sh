#!/bin/sh

# Time and predict remaining time data: second
# Time and real remaining time data : real

awk -f get.awk typescript > second
end=`awk 'END{print $1}' second`
for time in `cut -f 2 -d " " second | tac`
do
	echo `expr $end - $time` $time >> real
done

sed -i '1iTime Second' second
sed -i '1iTime Second' real



