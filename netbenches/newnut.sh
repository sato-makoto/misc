#!/bin/sh

P1=$1
P2=$2
HOST=$3
B_TIME=$4
E_TIME=$5
DA=`date "+%Y%m%d%H"`

LOG=$HOME/log.txt

if [ -z $5 ]; then
  echo "Lack of Parameter"
  echo "C_PORT D_PORT HOST STIME DTIME"
  exit 1
fi

touch $LOG
echo `date` >> $LOG
echo "nuttcp -P $P1 -p $P2 $HOST" >> $LOG

for x in `seq $B_TIME $E_TIME`
do
  if [ $x -lt 10 ]; then
    x="0"${x}
  fi
  echo "nuttcp -P $P1 -p $P2 $HOST >> $LOG" | \
    at -t ${DA}${x}
done
