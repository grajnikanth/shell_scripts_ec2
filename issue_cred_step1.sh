#! /bin/bash
curl -X 'POST' \
  'http://localhost:11030/issue-credential-2.0/send-proposal' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d @issue_step1_body.json > holder_prop_res.json
echo "cred_ex_id is: "
jq ".cred_ex_id" holder_prop_res.json
jq ".cred_ex_id" holder_prop_res.json > holder_cred_ex_id
