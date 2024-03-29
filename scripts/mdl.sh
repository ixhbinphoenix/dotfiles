#!/bin/sh

# Requires: youtube-dl, ffmpeg

if [ -z ${2+x} ];
    then echo "Usage: mdl <filename> <url>";
    else 
	mkdir ./mdl_temp
        yt-dlp -x --add-metadata --audio-format best -o ./mdl_temp/$1.mp3 "$2"
        for file in ./mdl_temp/*; do
            ffmpeg -i $file -v info -vn -f mp3 ./$1.mp3
        done
        rm -rf ./mdl_temp
fi;
