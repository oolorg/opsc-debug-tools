#!/bin/bash
cd `dirname $0`

. ./env.sh

KEY_AND_SECRET=`echo -n "${CLIENT_ID}:${CLIENT_SECRET}" | base64`

RES=`curl -sS ${ORION_HOST}/wso2am/oauth2/token \
	--header "Authorization: Basic ${KEY_AND_SECRET}" \
        -d "grant_type=password&username=${ADMIN_ACCOUNT}&password=${ADMIN_PASSWORD}"`

API_TOKEN=`echo ${RES} | python -m json.tool | grep access_token | sed 's/    "access_token": "//g' | sed 's/",//g'`
