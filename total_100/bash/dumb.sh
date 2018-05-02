#!/usr/bin/env bash

if [ -z $9 ]; then
  for x in `seq 9`
    do list[$x]=$x
  done
fi

for a in + - \* /
do 
  for b in + - \* / 
  do 
    for c in + - \* /
    do 
      for d in + - \* / 
      do 
        for e in + - \* /
        do 
          for f in + - \* / 
          do 
            for g in + - \* /
            do 
              for h in + - \* / 
              do 
                calclist="${list[1]}${a}${list[2]}${b}${list[3]}${c}\
${list[4]}${d}${list[5]}${e}${list[6]}${f}\
${list[7]}${g}${list[8]}${h}${list[9]}"
                total=`echo $calclist | bc -l`
                if [ $total = 100 -o $total = 100.00000000000000000000 ]; then
                   echo "`echo $calclist | sed 's/\(.\)/\1 /g'`" "=" $total
                fi
              done
            done
          done
        done
      done
    done
  done
done
