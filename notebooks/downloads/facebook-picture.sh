#!/usr/bin/sh

# inputs

. .env

dirpath="./data/facebook/picture"

pictures=$( ls "${dirpath}" )

for picture in $pictures

do

url=$( . lines.sh $( cat "${dirpath}/${picture}/resp.json" | jq '.data.url' ) )

. datetime.sh

. download.sh "${url}" "./data/downloads" "${datetime}.jpg"

done
