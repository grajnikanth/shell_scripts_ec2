#! /bin/bash
curl -X 'GET' \
  'http://localhost:11030/connections' \
  -H 'accept: application/json' > connections_holder_get.json

jq . connections_holder_get.json
conn_id=$(jq '.results[0].connection_id' connections_holder_get.json)
echo "first connection_id is $conn_id"
echo $conn_id > holder_conn_id
