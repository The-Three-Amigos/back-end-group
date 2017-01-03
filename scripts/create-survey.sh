  #!/bin/bash

    API="http://localhost:4741"
    URL_PATH="/surveys"
    TOKEN="ZdLJFts4YsIhZIj4+43H4Dc3h6UqT6oBVJmsA18H58o=--spjiL7UOhJORhKt/7lhntlXRtYBfyFZjmdi7oDmBEg4="

    curl "${API}${URL_PATH}" \
      --include \
      --request POST \
      --header "Content-Type: application/json" \
      --header "Authorization: Token token=${TOKEN}" \
      --data '{
        "survey": {
          "title": "Names",
          "question": "fave names?",
          "answers": ["Charles"]
        }
      }'

    echo
