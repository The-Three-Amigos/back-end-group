  #!/bin/bash

    API="http://localhost:4741"
    URL_PATH="/surveys"
    ID="58598e553316343d4500b398"

    curl "${API}${URL_PATH}/${ID}" \
      --include \
      --request PATCH \
      --header "Content-Type: application/json" \
      --data '{
        "survey": {
          "title": "pizza cheese",
          "question": "what is your favorite pizza cheeze?",
          "answers": ["fresh mozarrella"]
        }
      }'

    echo
