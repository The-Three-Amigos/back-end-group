  #!/bin/bash

    API="http://localhost:4741"
    URL_PATH="/surveys"
    TOKEN="zsdI1w++2VNpiZy2zIOLKPVNfhOodHGz9vHq6A5tJtQ=--UBIofESg3AofHKnHSSX6jxmFoJJ2gqejXY9a7reSDks="

    curl "${API}${URL_PATH}" \
      --include \
      --request POST \
      --header "Content-Type: application/json" \
      --header "Authorization: Token token=${TOKEN}" \
      --data '{
        "survey": {
          "title": "bugs",
          "question": "fave bug?",
          "answers": ["ant"]
        }
      }'

    echo
