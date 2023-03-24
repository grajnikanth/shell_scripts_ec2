#! /bin/bash
conn_id=$(cat holder_conn_id | tr -d '"')
curl -X 'GET' \
  http://localhost:11030/present-proof/records?connection_id=$conn_id \
  -H 'accept: application/json' > holder_proof_record.json
echo "Pharmacist pres_ex_id is: "
jq ".results[0].presentation_exchange_id" holder_proof_record.json
jq ".results[0].presentation_exchange_id" holder_proof_record.json > holder_pres_ex_id

