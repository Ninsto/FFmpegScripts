#! /bin/bash

export IFS=$'\n'

(
for LINE in `paste ./Temp/files.txt ./Temp/prefixedfiles.txt`
do
    F1=`echo $LINE | cut -f1`
    F2=`echo $LINE | cut -f2`    
    echo "ffmpeg -i $F1 -vcodec libx264 -acodec copy -threads 10 -crf 18 $F2"

done 
) > GeneratedScript