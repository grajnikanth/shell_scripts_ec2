#! /bin/bash
curl -X 'GET' \
  http://localhost:11030/credentials \
  -H 'accept: application/json' > pharmacist_credentials_all.json
echo "Pharmacist credential_ids are: "
jq '.results[].referent' pharmacist_credentials_all.json
jq '.results[].referent' pharmacist_credentials_all.json > pharmacist_credential_ids_all.txt
