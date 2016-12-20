  #!/bin/bash

    API="http://localhost:4741"
    URL_PATH="/surveys"
    ID="5859b56db1cbf403d9e86574"
    TOKEN="QxvcLazB97rY5yjvtohCIcnpw5E2Lq0BEg4QIKSEMKo=--bLVKQ1v23/WNqtZaslZPtWdZ6CO2708HngimDJhZxMY="


    curl "${API}${URL_PATH}/${ID}" \
      --include \
      --request PATCH \
      --header "Authorization: Token token=${TOKEN}" \
      --header "Content-Type: application/json" \
      --data '{
        "survey": {
          "answers": ["vanilla"]
        }
      }'

    echo
