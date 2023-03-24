#! /bin/bash
# deletes all the issue records records based on the cred_ex_ids fetched and stored in a txt file in a prior step
FILENAME="holder_cred_ex_ids_all.txt"
CRED_EX_IDS=$(cat $FILENAME)
for CRED_EX_ID in $CRED_EX_IDS 
do
    cred_ex_id_trim=$(echo $CRED_EX_ID | tr -d '"')
    echo "deleting cred_ex_id from issue records: "
    echo $cred_ex_id_trim
    curl -X 'DELETE' \
      http://localhost:11031/issue-credential-2.0/records/$cred_ex_id_trim \
      -H 'accept: application/json'
done
