#!/bin/bash

API="http://localhost:4741"
URL_PATH="/surveys"
ID="5859b56db1cbf403d9e86574"
TOKEN="sf8SPeOd/UQKdIsO0PVQwxUNxxW+BRpNk2Is2HvrRyw=--TWme/jgZ/UDIq1/PKO6RJrqD4ffkVroeswVHEiXaxCs="


curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "survey": {
      "title": "FAVE FLOWER"
    }
  }'

echo
