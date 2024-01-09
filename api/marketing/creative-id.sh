#!/usr/bin/sh

# inputs

. .env

. datetime.sh

CREATIVE_ID=""

fields="name,object_story_id"

# runner (CREATIVE_ID)

resp1=$( . get.sh "${CREATIVE_ID}" "fields=${fields}&access_token=${ACCESS_TOKEN}" )

# runner (adcreatives)

name=""

image_hash=""

url=""

page_id=""

object_story_spec="{\"link_data\":{\"image_hash\":\"${image_hash}\",\"link\":\"${url}\",\"message\":\"tryitout\"},\"page_id\":\"${page_id}\"}"

resp2=$( . get.sh "act_${AD_ACCOUNT_ID}/adcreatives" "name=${name}&object_story_spec=${object_story_spec}&access_token=${ACCESS_TOKEN}" )

# outputs

. create.sh "${path}" "${datetime}" "datetime" "${datetime}"

. create.sh "${path}" "${datetime}" "resp1" "${resp1}"

. create.sh "${path}" "${datetime}" "resp2" "${resp2}"
