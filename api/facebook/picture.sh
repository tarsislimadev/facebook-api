#!/usr/bin/sh

# inputs

. .env

. datetime.sh

path="facebook/picture"

# runner

resp=$( . ./get.sh "${path}" "redirect=false" )

# outputs

. create.sh "${path}" "${datetime}" "resp.json" "${resp}"
