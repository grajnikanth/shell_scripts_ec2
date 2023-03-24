#! /bin/bash
curl -X 'POST' \
  'http://52.22.68.126:11030/issue-credential-2.0/send-proposal' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d '{
    "comment": "Send me my CVS LMS Credential",
    "connection_id": "7c44a08e-a161-4b86-aec4-afa699400039",
    "credential_preview": {
      "@type": "issue-credential/2.0/credential-preview",
      "attributes": [
        {
          "name": "firstname",
          "value": "John"
        },
        {
          "name": "lastname",
          "value": "Smith"
        },
        {
            "name": "coursename",
            "value": "Pharmacy-101"
        },
        {
            "name": "age",
            "value": "26"
        }
      ]
    },
    "filter": {
      "indy": {
           "cred_def_id": "77ReKtuPSxz98yMw3HoRST:3:CL:151185:CVS_LMS_course"
       }
    }
}' > issue1_res.json
