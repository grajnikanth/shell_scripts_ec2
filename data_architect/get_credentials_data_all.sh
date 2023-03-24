#! /bin/bash
curl -X 'GET' \
  http://localhost:11031/credentials \
  -H 'accept: application/json' > data_credentials_all.json
echo "Holder credential_ids are: "
jq '.results[].referent' data_credentials_all.json
jq '.results[].referent' data_credentials_all.json > data_credential_ids_all.txt
