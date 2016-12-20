  #!/bin/bash

    API="http://localhost:4741"
    URL_PATH="/surveys"
<<<<<<< HEAD
    ID="58594aca232d1b25547c093f"
    TOKEN="ZbjaN0qnO8ou52jCa5v0s3HXQhZsUBulxRM6U5Qk8HA=--BLcWZWu1FZKx4/5eZ9+1Jklmg+aUnEGdNFMRiQ5wE+M="
=======
    ID="58598e553316343d4500b398"
>>>>>>> createCurl

    curl "${API}${URL_PATH}/${ID}" \
      --include \
      --request PATCH \
<<<<<<< HEAD
      --header "Authorization: Token token=${TOKEN}" \
      --header "Content-Type: application/json" \
      --data '{
        "surveys": {
          "title": "dogs 2",
          "question": "what is your favorite dog?",
          "answers": ["german shepherd"]
=======
      --header "Content-Type: application/json" \
      --data '{
        "survey": {
          "title": "pizza cheese",
          "question": "what is your favorite pizza cheeze?",
          "answers": ["fresh mozarrella"]
>>>>>>> createCurl
        }
      }'

    echo
