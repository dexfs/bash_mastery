#!/bin/bash

while getopts "f:c:" opt; do
case "$opt" in 
	c)result=$(echo "scale=2; ($OPTARG * (9 / 5)) + 32" | bc);;
	f)result=$(echo "scale=2; ($OPTARG - 32) * (5/9)" | bc);;
	\?)echo "Invalid option provided";;
esac
done 
echo $result
