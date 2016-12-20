  #!/bin/bash

    API="http://localhost:4741"
    URL_PATH="/surveys"
    TOKEN="QxvcLazB97rY5yjvtohCIcnpw5E2Lq0BEg4QIKSEMKo=--bLVKQ1v23/WNqtZaslZPtWdZ6CO2708HngimDJhZxMY="

    curl "${API}${URL_PATH}" \
      --include \
      --request POST \
      --header "Content-Type: application/json" \
      --header "Authorization: Token token=${TOKEN}" \
      --data '{
        "survey": {
          "title": "Candles",
          "question": "when is your fave scent?",
          "answers": ["vanilla"]
        }
      }'

    echo
