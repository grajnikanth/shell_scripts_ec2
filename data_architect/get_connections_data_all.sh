#! /bin/bash
curl -X 'GET' \
  http://localhost:11031/connections \
  -H 'accept: application/json' > holder_connections_all.json
echo "Holder conn_ids are: "
jq '.results[].connection_id' holder_connections_all.json
jq '.results[].connection_id' holder_connections_all.json > holder_conn_ids_all.txt
