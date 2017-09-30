#!/bin/sh

HOST=$1
P1=$2
P2=$3
B_TIME=$4
E_TIME=$5
DA=`date "+%Y%m%d%H"`

LOG=$HOME/log.txt

if [ -z $5 ]; then
  echo "Lack of Parameter"
  echo "Usage: newnut.sh target_host control_port data_port start_min last_min"
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
