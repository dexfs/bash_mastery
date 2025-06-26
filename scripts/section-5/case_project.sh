#!/bin/bash
PS3="Choose the city: "
select city in Tokyo London "Los Angeles" Moscow Dubai Manchester "New York" Paris Bangalore Johannesburg Istanbul Milan "Abu Dhabi" Pune Nairobi Berlin Karachi;
do 
case "$city" in 
	Tokyo) country="Japan";;
	London | Manchester) country="United Kingdom";;
	*) echo "Invalid city";;
esac
echo "$city is in $country"
break
done
