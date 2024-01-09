#!/usr/bin/sh

# inputs

. .env

path="UpdateCampaign"

datetime=$( date +%Y%m%d%H%M%S )

# runner

resp=$( . get.sh "${path}" "param1=1" )

# outputs

. create.sh "${path}" "${datetime}" "datetime" "${datetime}"

. create.sh "${path}" "${datetime}" "resp.json" "${resp}"
