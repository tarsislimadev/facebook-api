#!/usr/bin/sh

# inputs

. .env

. datetime.sh

# ACCOUNT_ID=""

path="act_${ACCOUNT_ID}/adimages"

IMAGE_PATH=""

# runner

resp=$( bash get.sh "${path}" "filename=@${IMAGE_PATH}&access_token=${ACCESS_TOKEN}" | jq )

# outputs

bash create.sh "${path}" "${datetime}" "datetime" "${datetime}"

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
