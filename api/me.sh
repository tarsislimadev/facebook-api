#!/usr/bin/sh

# inputs

. datetime.sh

path="me"

# runner

resp=$( . get.sh "${path}" )

# outputs

. create.sh "${path}" "${datetime}" "resp.json" "${resp}"
