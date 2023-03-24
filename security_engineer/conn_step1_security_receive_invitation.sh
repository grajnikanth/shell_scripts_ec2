#! /bin/bash
invitation=$(cat invitation.json)
echo "Invitation Object used to connect with Issuer:"
echo "$invitation"
(curl -X POST \
  http://localhost:11032/connections/receive-invitation \
  -H accept: application/json \
  -H Content-Type: application/json \
  -d "$invitation") > connections_holder.json
echo "Holder Connection Object is:"
jq . connections_holder.json
conn_id=$(jq '.connection_id' connections_holder.json)
echo "connection_id is $conn_id"
echo $conn_id > holder_conn_id
