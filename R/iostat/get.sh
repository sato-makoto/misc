#!/bin/sh

# Time and predict remaining time data: second
# Time and real remaining time data : real

if [ -e real ]; then
	rm real
fi

awk -f get.awk typescript > second
end=`awk 'END{print $1}' second`
for time in `cut -f 1 -d " " second | tac`
do
	echo $time `expr $end - $time` >> real
done

sed -i '1iTime Second' second
sed -i '1iTime Second' real



