#! /bin/bash
# deletes all the credentials based on the credential_ids fetched and stored in a txt file in a prior step
FILENAME="pharmacist_credential_ids_all.txt"
CREDENTIAL_IDS=$(cat $FILENAME)
for CREDENTIAL_ID in $CREDENTIAL_IDS 
do
    credential_id_trim=$(echo $CREDENTIAL_ID | tr -d '"')
    echo "deleting credential_id from connections "
    echo $credential_id_trim
    curl -X 'DELETE' \
      http://localhost:11030/credential/$credential_id_trim \
      -H 'accept: application/json'
done
