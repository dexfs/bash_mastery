#!/bin/bash

full_path=""

while getopts "p:" opt; do
	case "$opt" in
		p) full_path="$OPTARG/folders_to_create.txt";;
		\?);;
	esac
done
echo $full_path
while read folder; do
	mkdir "$folder"
	echo "$folder was created"
	sleep 0.5s
done < "$full_path"

