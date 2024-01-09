#!/usr/bin/sh

# https://developers.facebook.com/docs/graph-api/guides/upload

# inputs

. .env

path="${APP_ID}/uploads"

file_name=""

file_length=$( wc -c < "${file_name}" )

file_type=$( . filetype.sh "${file_name}" )

# runner

upload_session_id=$( . post.sh "${path}" "file_length=${file_length}&file_type=${file_type}&access_token=${ACCESS_TOKEN}" | jq ".id" )

resp=$( curl -sL X POST "https://graph.facebook.com/${API_VERSION}/${upload_session_id}" --header "Authorization: OAuth ${ACCESS_TOKEN}" --header "file_offset: 0" --data-binary "@${file_name}" )

# outputs

. create.sh "${path}" "${upload_session_id}" "resp.json" "${resp}"
