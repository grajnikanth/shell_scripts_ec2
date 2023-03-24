#! /bin/bash
curl -X 'GET' \
  http://localhost:11030/issue-credential-2.0/records \
  -H 'accept: application/json' > holder_issue_record_all.json
echo "Holder cred_ex_id are: "
jq '.results[].cred_ex_record.cred_ex_id' holder_issue_record_all.json
jq '.results[].cred_ex_record.cred_ex_id' holder_issue_record_all.json > holder_cred_ex_ids_all.txt
