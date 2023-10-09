#!/usr/bin/sh

# https://developers.facebook.com/docs/facebook-login/guides/access-tokens

# inputs

. .env

. datetime.sh

# runner

ACCESS_TOKEN=$( bash get.sh "oauth/access_token" "client_id=${CLIENT_ID}&client_secret=${CLIENT_SECRET}&grant_type=client_credentials" | jq '.access_token' )

# outputs

bash env.sh "ACCESS_TOKEN" "${ACCESS_TOKEN}" 

bash create.sh "ACCESS_TOKEN" "${datetime}" "ACCESS_TOKEN" "${ACCESS_TOKEN}"
