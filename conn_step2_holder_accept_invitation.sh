#! /bin/bash
# in the below command, used tr -d to delete quotes at the front and end of the connection_id string returned
conn_id=$(cat holder_conn_id | tr -d '"')
echo "Connection_id used to accept invitation is $conn_id"
(curl -X POST \
  http://localhost:11030/connections/$conn_id/accept-invitation \
  -H accept: application/json) > connections_holder.json
echo "Holder connection object is:"
jq . connections_holder.json
