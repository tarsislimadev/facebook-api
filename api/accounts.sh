#!/usr/bin/sh

# https://developers.facebook.com/docs/facebook-login/guides/access-tokens

# inputs

. .env

. datetime.sh

path="${USER_ID}/accounts"

# runner

resp=$( . get.sh "${path}" "access_token=${ACCESS_TOKEN}" )

# outputs

. create.sh "${path}" "${datetime}" "resp.json" "${resp}"
