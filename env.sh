#!/bin/sh
cd `dirname $0`

ORION_HOST=
ORION_PORT=443
FIWARE_SERVICE=
API_PROXY=
API_TOKEN=
CURL_OPTIONS="-s -S -k -v"

ADMIN_ACCOUNT=
ADMIN_PASSWORD=
CLIENT_ID=
CLIENT_SECRET=

if [ -n "$API_PROXY" ] ; then
    CURL_OPTIONS="$CURL_OPTIONS -x $API_PROXY"
fi
