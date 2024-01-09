#!/usr/bin/sh

# inputs

. .env

. datetime.sh

path="act_${AD_ACCOUNT_ID}/ads"

name="My Ad"

adset_id=""

image_hash=""

title=""

body=""

object_url=""

creative="{\"title\":\"${title}\",\"body\":\"${body}\",\"object_url\":\"${object_url}\",\"image_hash\":\"${image_hash}\"}"

status="PAUSED"

# runner

resp=$( . get.sh "${path}" "name=${name}&adset_id=${adset_id}&creative=${creative}&status=${status}&access_token=${ACCESS_TOKEN}" )

# outputs

. create.sh "${path}" "${datetime}" "datetime" "${datetime}"

. create.sh "${path}" "${datetime}" "resp.json" "${resp}"
