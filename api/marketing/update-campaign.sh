#!/usr/bin/sh

# inputs

. .env

path="UpdateCampaign"

datetime=$( date +%Y%m%d%H%M%S )

# runner

resp=$( bash get.sh "${path}" "param1=1" )

# outputs

bash create.sh "${path}" "${datetime}" "datetime" "${datetime}"

bash create.sh "${path}" "${datetime}" "resp.json" "${resp}"
