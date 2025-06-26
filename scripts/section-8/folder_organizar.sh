#!/bin/bash

read -r -p "Which folder do you want to organize? " folder

while read filename; do 
	case "$filename" in 
		*.pdf) subfolder="pdf" ;;
		*.jpg|*.jpge) subfolder="images";;
		*.mp4) subfolder="videos" ;;
		*) subfolder="others" ;;
	esac
	if [ ! -d "$folder/$subfolder" ]; then
		mkdir -p "$folder/$subfolder"
	fi
	if [ -d "$filename" ]; then
		continue
	fi
	echo "folder: $folder/$subfolder"
	mv "$filename" "$folder/$subfolder"
done < <(ls "$folder")
