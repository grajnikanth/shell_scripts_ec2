#! /bin/bash
curl -X 'GET' \
  http://localhost:11032/present-proof/records \
  -H 'accept: application/json' > security_proof_records_all.json
echo "Holder pres_ex_id is: "
jq ".results[].presentation_exchange_id" security_proof_records_all.json
jq ".results[].presentation_exchange_id" security_proof_records_all.json > security_pres_ex_ids_all.txt

