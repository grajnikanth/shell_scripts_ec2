#! /bin/bash
curl -X 'GET' \
  http://localhost:11030/present-proof/records \
  -H 'accept: application/json' > holder_proof_records_all.json
echo "Holder pres_ex_id is: "
jq ".results[].presentation_exchange_id" holder_proof_records_all.json
jq ".results[].presentation_exchange_id" holder_proof_records_all.json > holder_pres_ex_ids_all.txt

