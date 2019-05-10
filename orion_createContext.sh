#!/bin/bash
cd `dirname $0`

. ./env.sh

if [ -z "$API_TOKEN" ]; then
    . ./get_token.sh
fi
echo ${API_TOKEN}

(curl -X POST  $ORION_HOST:$ORION_PORT/orion/v1.0/queryContext ${CURL_OPTIONS}\
    --header 'Content-Type: application/json' \
    --header 'Accept: application/json' \
    --header "Fiware-Service: $FIWARE_SERVICE" \
    --header "Fiware-ServicePath: /" \
    --header "Authorization: Bearer $API_TOKEN" \
    -d @-  | python -mjson.tool ) <<EOF
{
    "entities": [
        {
            "type": "Room",
            "isPattern": "false",
            "id": "Room1"
        }
    ],
    "attributes": [
        "temperature"
    ],
    "attributes": [
        "pressure"
    ]
}
EOF
