#! /bin/bash
curl -X 'GET' \
  http://localhost:11000/connections \
  -H 'accept: application/json' > issuer_connections_all.json
echo "cvs conn_ids are: "
jq '.results[].connection_id' issuer_connections_all.json
jq '.results[].connection_id' issuer_connections_all.json > issuer_conn_ids_all.txt
