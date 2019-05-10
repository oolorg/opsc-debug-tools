#!/bin/bash
cd `dirname $0`

. ./env.sh

if [ -z "$API_TOKEN" ]; then
    . ./get_token.sh
fi

(curl -X GET  $ORION_HOST/comet/v1.0/contextEntities/type/Room/id/Room1/attributes/temperature?lastN=100 $CURL_OPTIONS \
    --header 'Content-Type: application/json' \
    --header 'Accept: application/json' \
    --header "Fiware-Service: $FIWARE_SERVICE" \
    --header "Fiware-ServicePath: /" \
    --header "Authorization: Bearer $API_TOKEN" \
    | python -mjson.tool )
