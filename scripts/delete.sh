#!/bin/sh

API="http://localhost:4741"
URL_PATH="/surveys"
ID="5859a421a4a8797aa8b34fe0"
TOKEN="1MftyPXcBPHR4sv2ElXfTJ7iSGCRO2Y80FrskrEa2e4=--kF/JGYgeoLSzUSZ43TuzlKGVdwSUWVRAYTh+bLPvMlI="

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
