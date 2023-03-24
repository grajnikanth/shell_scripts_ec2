#! /bin/bash
# deletes all the proof-presentation records based on the pres_ex_ids fetched and stored in a txt file in a prior step
FILENAME="data_pres_ex_ids_all.txt"
PRES_EX_IDS=$(cat $FILENAME)
for PRES_EX_ID in $PRES_EX_IDS 
do
    pres_ex_id_trim=$(echo $PRES_EX_ID | tr -d '"')
    echo "deleting pres_ex_id from proof records: "
    echo $pres_ex_id_trim
    curl -X 'DELETE' \
      http://localhost:11031/present-proof/records/$pres_ex_id_trim \
      -H 'accept: application/json'
done
