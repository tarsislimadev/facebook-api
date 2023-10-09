#!/usr/bin/sh

# inputs

. .env

. datetime.sh

path="facebook/picture"

# runner

resp=$( bash ./get.sh "${path}" "redirect=false" )

# outputs

bash create.sh "${path}" "${datetime}" "resp.json" "${resp}"
