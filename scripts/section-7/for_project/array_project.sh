#!/bin/bash

# use: cut -d "." -f 2 urls.txt
# use: echo "wwww.facebook.com" | cut -d"." -f2 

readarray -t urls < urls.txt

for url in "${urls[@]}"; do
	webname=$(echo $url | cut -d "." -f 2)
	curl --head "$url" > "$webname".txt
done
