  #!/bin/bash

    API="http://localhost:4741"
    URL_PATH="/surveys"
    TOKEN="sf8SPeOd/UQKdIsO0PVQwxUNxxW+BRpNk2Is2HvrRyw=--TWme/jgZ/UDIq1/PKO6RJrqD4ffkVroeswVHEiXaxCs="

    curl "${API}${URL_PATH}" \
      --include \
      --request POST \
      --header "Content-Type: application/json" \
      --header "Authorization: Token token=${TOKEN}" \
      --data '{
        "survey": {
          "title": "Marbles",
          "question": "fave color?",
          "answers": ["green"]
        }
      }'

    echo
