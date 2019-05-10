#!/bin/bash
cd `dirname $0`

. ./env.sh

if [ -z "$API_TOKEN" ]; then
    . ./get_token.sh
fi

(curl -X POST  $ORION_HOST:$ORION_PORT/orion/v1.0/updateContext $CURL_OPTIONS \
    --header 'Content-Type: application/json' \
    --header 'Accept: application/json' \
    --header "Fiware-Service: $FIWARE_SERVICE" \
    --header "Fiware-ServicePath: /" \
    --header "Authorization: Bearer $API_TOKEN" \
    -d @-  | python -mjson.tool ) <<EOF
{
    "contextElements": [
        {
            "type": "Room",
            "isPattern": "false",
            "id": "Room1",
            "attributes": [
                {
                    "name": "temperature",
                    "type": "float",
                    "value": "28"
                },
                {
                    "name": "pressure",
                    "type": "integer",
                    "value": "723"
                }
            ]
        }
    ],
    "updateAction": "APPEND"
} 
EOF
