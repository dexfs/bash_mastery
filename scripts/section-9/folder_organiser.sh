#!/bin/bash

read -r -p "Which folder do you want to organize? " folder

if [ ! -d "$folder" ]; then
	echo "Invalid folder provided"
	exit 1
fi


while read filename; do 
	case "$filename" in 
		*.txt) subfolder="plaintext";;
		*.pdf) subfolder="pdf";;
		*.jpg|*.jpeg) subfolder="images";;
		*.mp4) subfolder="videos";;
		*) subfolder="others";;
	esac

	if [ ! -d "$folder/$subfolder" ]; then
		mkdir -p "$folder/$subfolder"
	fi

	if [ -d "$filename" ]; then
		continue
	fi
	
	if [ -f "$folder/$subfolder/$filename" ]; then
		continue
	fi

	mv "$filename" "$folder/$subfolder"
done < <(find "$folder" -maxdepth 1 -type f)


echo "All files moved!"
