#! /bin/bash
curl -X 'GET' \
  'http://localhost:11000/connections' \
  -H 'accept: application/json' > connections_issuer_get.json

jq . connections_issuer_get.json
conn_id=$(jq '.results[0].connection_id' connections_issuer_get.json)
echo "first connection_id is $conn_id"
issuer_conn_id=$conn_id
echo $issuer_conn_id > issuer_conn_id
