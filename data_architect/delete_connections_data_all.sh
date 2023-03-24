#! /bin/bash
# deletes all the connections based on the conn_ids fetched and stored in a txt file in a prior step
FILENAME="holder_conn_ids_all.txt"
CONN_IDS=$(cat $FILENAME)
for CONN_ID in $CONN_IDS 
do
    conn_id_trim=$(echo $CONN_ID | tr -d '"')
    echo "deleting conn_id from connections "
    echo $conn_id_trim
    curl -X 'DELETE' \
      http://localhost:11031/connections/$conn_id_trim \
      -H 'accept: application/json'
done
