#! /bin/bash
pres_ex_id=$(cat phar_pres_ex_id | tr -d '"')
curl -X 'POST' \
  http://localhost:11030/present-proof/records/$pres_ex_id/send-presentation \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d @proof_pres_body.json > proof_step4_res.json
jq . proof_step4_res.json
