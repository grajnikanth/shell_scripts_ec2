#! /bin/bash
curl -X 'GET' \
  http://localhost:11000/present-proof/records \
  -H 'accept: application/json' > issuer_proof_records_all.json
echo "Issuer pres_ex_id is: "
jq ".results[].presentation_exchange_id" issuer_proof_records_all.json
jq ".results[].presentation_exchange_id" issuer_proof_records_all.json > issuer_pres_ex_ids_all.txt

