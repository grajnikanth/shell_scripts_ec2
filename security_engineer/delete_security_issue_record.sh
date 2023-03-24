#! /bin/bash
# provide cred_ex_id as argument to bash script to delete
curl -X 'DELETE' \
  http://localhost:11032/issue-credential-2.0/records/$1 \
  -H 'accept: application/json'
