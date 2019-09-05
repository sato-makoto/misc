#!/bin/sh

# ... まであと何日(同年内)

NOW="`date +%j`"
YEAR=`date +%Y`
FUTURE=`date -d ${YEAR}$1 +%j`

DAYS=`echo $FUTURE - $NOW | bc`
echo 当日まで、あと残すところ${DAYS}日

