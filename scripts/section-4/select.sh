#!/bin/bash
PS3="What is the day of the week?: "
select day in mon tue thu fri sat sun;
do
echo "The of the week is $day"
break
done
