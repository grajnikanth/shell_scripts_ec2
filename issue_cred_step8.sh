#! /bin/bash
cred_ex_id=$(cat holder_cred_ex_id | tr -d '"')
curl -X 'POST' \
  http://localhost:11030/issue-credential-2.0/records/$cred_ex_id/store \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d @issue_step8_body.json > issue_step8_res.json
jq . issue_step8_res.json

# update the proof_pres_body.json using the cred_id in issue_step8_body.json for use in proof presentation and referent
cred_id_input=$(jq '.credential_id' issue_step8_body.json | tr -d '"')
contents="$(jq --arg cred_id "$cred_id_input" '.requested_attributes.all_attributes.cred_id |= $cred_id' proof_pres_body.json)" && \
echo -E "${contents}" > proof_pres_body.json
echo "Updated proof_pres_body.json is as follows - verify"
jq . proof_pres_body.json
