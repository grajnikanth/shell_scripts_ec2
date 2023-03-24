#! /bin/bash
curl -X 'DELETE' \
  http://localhost:11000/connections/$1 \
  -H 'accept: application/json'
