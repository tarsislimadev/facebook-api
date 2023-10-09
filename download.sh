#!/usr/bin/sh

url="${1}"

filepath="${2}"

filename="${3}"

mkdir -p "${filepath}"

curl -sL "${url}" --output "${filepath}/${filename}"
