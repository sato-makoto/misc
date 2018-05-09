#!/bin/sh

NAME=$1

if [ -e  ${NAME}.mp4 ]; then
  rm ${NAME}.mp4
fi

if [ ! -f stlls.txt ]; then
  ls *.jpg | sort -n >stills.txt
fi

mencoder -nosound -ovc lavc -lavcopts vcodec=mpeg4:aspect=800/600:vbitrate=8000000 -vf scale=800:600 -o ${NAME}.avi -mf type=jpeg:fps=15 mf://@stills.txt

ffmpeg -i ${NAME}.avi ${NAME}.mp4
rm ${NAME}.avi
