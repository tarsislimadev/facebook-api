#!/usr/bin/sh

# inputs

. .env

. datetime.sh

# ACCOUNT_ID=""

path="act_${ACCOUNT_ID}/adimages"

IMAGE_PATH=""

# runner

resp=$( . get.sh "${path}" "filename=@${IMAGE_PATH}&access_token=${ACCESS_TOKEN}" )

# outputs

. create.sh "${path}" "${datetime}" "datetime" "${datetime}"

. create.sh "${path}" "${datetime}" "resp.json" "${resp}"
