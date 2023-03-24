#! /bin/bash
curl -X 'GET' \
  http://localhost:11031/present-proof/records \
  -H 'accept: application/json' > data_proof_records_all.json
echo "Holder pres_ex_id is: "
jq ".results[].presentation_exchange_id" data_proof_records_all.json
jq ".results[].presentation_exchange_id" data_proof_records_all.json > data_pres_ex_ids_all.txt

