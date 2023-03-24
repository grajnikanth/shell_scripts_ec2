#! /bin/bash
curl -X 'GET' \
  http://localhost:11032/credentials \
  -H 'accept: application/json' > security_credentials_all.json
echo "Holder credential_ids are: "
jq '.results[].referent' security_credentials_all.json
jq '.results[].referent' security_credentials_all.json > security_credential_ids_all.txt
