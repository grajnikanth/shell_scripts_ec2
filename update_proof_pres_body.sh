#!/bin/bash
cred_id_input=$1
contents="$(jq --arg cred_id "$cred_id_input" '.requested_attributes.all_attributes.cred_id |= $cred_id' proof_pres_body.json)" && \
echo -E "${contents}" > proof_pres_body.json
