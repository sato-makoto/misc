#!/bin/sh 
NAME=sine

if [ -e  ${NAME}.mp4 ]; then
  rm ${NAME}.mp4
fi
if [ -e  ${NAME}.avi ]; then
  rm ${NAME}.avi
fi

mencoder -nosound \
         -ovc lavc \
         -lavcopts vcodec=mpeg4:aspect=4/3:vbitrate=8000000 \
         -vf scale=800:600 \
         -o ${NAME}.avi \
         -mf type=png:fps=6 mf://@stills.txt
 
ffmpeg -i ${NAME}.avi ${NAME}.mp4
