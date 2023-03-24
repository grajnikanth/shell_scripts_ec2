#! /bin/bash
# provide connection ID as argument to bash script to delete
curl -X 'DELETE' \
  http://localhost:11031/connections/$1 \
  -H 'accept: application/json'
