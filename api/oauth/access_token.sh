#!/usr/bin/sh

# https://developers.facebook.com/docs/facebook-login/guides/access-tokens

# inputs

. .env

. datetime.sh

# runner

ACCESS_TOKEN=$( . get.sh "oauth/access_token" "client_id=${APP_ID}&client_secret=${APP_SECRET}&grant_type=client_credentials" | jq '.access_token' )

# outputs

. env.sh "ACCESS_TOKEN" "${ACCESS_TOKEN}" 

. create.sh "ACCESS_TOKEN" "${datetime}" "ACCESS_TOKEN" "${ACCESS_TOKEN}"
