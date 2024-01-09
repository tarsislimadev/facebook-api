#!/usr/bin/sh

# inputs

. .env

path="UpdateCampaign"

. ./datetime.sh

# runner

resp=$( . get.sh "${path}" )

# outputs

. create.sh "${path}" "${datetime}" "datetime" "${datetime}"

. create.sh "${path}" "${datetime}" "resp.json" "${resp}"
