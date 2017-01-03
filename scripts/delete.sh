#!/bin/sh

API="http://localhost:4741"
URL_PATH="/surveys"
ID="585c28e1baa5ffa12faa2e7c"
TOKEN="MiOsOeWOlz0QEayR9vRw8qB/o2hOqHX8RTMSKDOCdOI=--cQ9/T/XlQtlJcGXERt7XM0jIyx/JuVRRFO68ruWV/D8="

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
