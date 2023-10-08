#!/usr/bin/sh

# https://developers.facebook.com/docs/graph-api/guides/upload

# inputs

. .env

. datetime.sh

path="${APP_ID}/uploads"

file_name=""

file_length=$( wc -c < "${file_name}" )

file_type=$( bash filetype.sh "${file_name}" )

# runner

resp=$( bash get.sh "${path}" "file_length=${file_length}&file_type=${file_type}&access_token=${ACCESS_TOKEN}" )

# outputs

bash create.sh "${path}" "${datetime}" "resp.json" "${resp}"
