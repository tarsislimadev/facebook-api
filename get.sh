#!/usr/bin/sh

. .env

PATH="${1}"

# "oauth/access_token"

QUERY="${2}"

# client_id=${APP_ID}&redirect_uri=${URL}&client_secret=${APP_SECRET}&code=${AUTHORIZATION_CODE}

curl -X GET -sL "https://graph.facebook.com/${API_VERSION}/${PATH}?${QUERY}"
