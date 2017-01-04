  #!/bin/bash

      API="http://localhost:4741"
      URL_PATH="/surveys"
      ID="58594aca232d1b25547c093f"
      TOKEN="b24gGIhz+v+Y/linti7y+b4Bb9T3DCU/Tki5tq/6AvY=--cs6buDZ/mQOVL1iyyRUp1xUMGN3i5nbktM0OOyBQy1U="


      curl "${API}${URL_PATH}/${ID}" \
        --include \
        --request PATCH \
        --header "Authorization: Token token=${TOKEN}" \
        --header "Content-Type: application/json" \
        --data '{
          "survey": {
            "answers": ["beeeeeeeeeeeeeeeeeeeeeee"]
          }
        }'

      echo

      API="http://localhost:4741"
      URL_PATH="/answers"
      ID="58594aca232d1b25547c093f"



      curl "${API}${URL_PATH}/${ID}" \
        --include \
        --request POST \
        --header "Content-Type: application/json" \
        --data '{
          "survey": {
            "answers": "birdie"
          }
        }'
