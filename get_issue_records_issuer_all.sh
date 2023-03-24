#! /bin/bash
curl -X 'GET' \
  http://localhost:11000/issue-credential-2.0/records \
  -H 'accept: application/json' > issuer_issue_record_all.json
echo "Issuer cred_ex_id are: "
jq '.results[].cred_ex_record.cred_ex_id' issuer_issue_record_all.json
jq '.results[].cred_ex_record.cred_ex_id' issuer_issue_record_all.json > issuer_cred_ex_ids_all.txt
