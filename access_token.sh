#!/usr/bin/sh

. .env

client_id=""

client_secret=""

curl -sL "https://graph.facebook.com/oauth/access_token?client_id=${client_id}&client_secret=${client_secret}&grant_type=client_credentials" | jq 
