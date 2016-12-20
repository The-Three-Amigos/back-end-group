API="http://localhost:4741"
URL_PATH="/surveys"
ID="5859ba382af32806f80073f0"
TOKEN="9DfaHrqq5n46MGzhfazCUY0SNwSaWMKdlq1iXgJQPP0=--hC5YDbTCObDkWlMedJOHXWASaGqKepWr7NqH5Du/grU="

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "survey": {
      "answers": ["green"]
    }
  }'

echo
