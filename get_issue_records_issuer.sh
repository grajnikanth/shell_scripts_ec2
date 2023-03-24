#! /bin/bash
conn_id=$(cat issuer_conn_id | tr -d '"')
curl -X 'GET' \
  http://localhost:11000/issue-credential-2.0/records?connection_id=$conn_id \
  -H 'accept: application/json' > issuer_issue_record.json
echo "issuer cred_ex_id is: "
jq ".results[0].cred_ex_record.cred_ex_id" issuer_issue_record.json
jq ".results[0].cred_ex_record.cred_ex_id" issuer_issue_record.json > issuer_cred_ex_id

