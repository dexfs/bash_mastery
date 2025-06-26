#/bin/bash
IFS=,
folder=people
name=andre,dani,amelie
mkdir $folder && cd $folder && touch $name && echo $name  >> $name
