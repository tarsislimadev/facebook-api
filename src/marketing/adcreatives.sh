#!/usr/bin/sh

# inputs

. .env

path="UpdateCampaign"

bash ./datetime.sh

# runner

resp=$( bash get.sh "${path}" "param1=1" | jq )

# outputs

bash create.sh "${path}" "${datetime}" "datetime" "${datetime}"

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
