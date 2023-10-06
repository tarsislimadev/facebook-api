#!/usr/bin/sh

# inputs

. .env

. datetime.sh

path="act_${AD_ACCOUNT_ID}/adset"

name="App Event Optimization Example"

status="PAUSED"

optimization_goal="OFFSITE_CONVERSIONS"

billing_event="IMPRESSIONS"

promoted_object="{'application_id': {app_id}, 'object_store_url': '{appstore_url}', 'custom_event_type': 'PURCHASE'}"

bid_amount=100

daily_budget=300

# runner

resp=$( bash get.sh "${path}" "name=${name}&status=${status}&optimization_goal=${optimization_goal}&billing_event=${billing_event}&promoted_object=${promoted_object}&bid_amount=${bid_amount}&daily_budget=${daily_budget}&campaign_id=${campaign_id}&targeting={'geo_locations':{'countries':['US','GB']}, 'page_types':['mobilefeed'], 'user_os':['ios']}&access_token=${access_token}" )

# outputs

bash create.sh "${path}" "${datetime}" "datetime" "${datetime}"

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
