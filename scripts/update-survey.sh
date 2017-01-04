  #!/bin/bash

      API="http://localhost:4741"
      URL_PATH="/surveys"
      ID="586c281b171b3f743a52be9e"
      TOKEN="zsdI1w++2VNpiZy2zIOLKPVNfhOodHGz9vHq6A5tJtQ=--UBIofESg3AofHKnHSSX6jxmFoJJ2gqejXY9a7reSDks="


      curl "${API}${URL_PATH}/${ID}" \
        --include \
        --request PATCH \
        --header "Authorization: Token token=${TOKEN}" \
        --header "Content-Type: application/json" \
        --data '{
          "survey": {
            "answers": "beeeeeeeeeeeeeeeeeeeeeee"
          }
        }'

      echo

      API="http://localhost:4741"
      URL_PATH="/answers"
      ID="586c281b171b3f743a52be9e"
      TOKEN="zsdI1w++2VNpiZy2zIOLKPVNfhOodHGz9vHq6A5tJtQ=--UBIofESg3AofHKnHSSX6jxmFoJJ2gqejXY9a7reSDks="


      curl "${API}${URL_PATH}/${ID}" \
        --include \
        --request POST \
        --header "Authorization: Token token=${TOKEN}" \
        --header "Content-Type: application/json" \
        --data '{
          "survey": {
            "answers": "birdddddddddddddddd"
          }
        }'
