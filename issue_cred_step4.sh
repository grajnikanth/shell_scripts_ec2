#! /bin/bash
cred_ex_id=$(cat holder_cred_ex_id | tr -d '"')
(curl -X POST \
  http://localhost:11030/issue-credential-2.0/records/$cred_ex_id/send-request \
  -H accept: application/json \
  -H Content-Type: application/json) > issue_step4_res.json
jq . issue_step4_res.json
