#!/usr/bin/sh

# https://developers.facebook.com/docs/graph-api/overview

. .env

curl -sL "https://graph.facebook.com/${USER_ID}?access_token=${ACCESS_TOKEN}"
