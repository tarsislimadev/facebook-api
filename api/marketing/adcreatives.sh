#!/usr/bin/sh

# inputs

. .env

path="UpdateCampaign"

bash ./datetime.sh

# runner

resp=$( bash get.sh "${path}" )

# outputs

bash create.sh "${path}" "${datetime}" "datetime" "${datetime}"

bash create.sh "${path}" "${datetime}" "resp.json" "${resp}"