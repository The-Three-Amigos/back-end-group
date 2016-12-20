  #!/bin/bash

    API="http://localhost:4741"
    URL_PATH="/surveys"
    ID="58594aca232d1b25547c093f"
    TOKEN="ZbjaN0qnO8ou52jCa5v0s3HXQhZsUBulxRM6U5Qk8HA=--BLcWZWu1FZKx4/5eZ9+1Jklmg+aUnEGdNFMRiQ5wE+M="


    curl "${API}${URL_PATH}/${ID}" \
      --include \
      --request PATCH \
      --header "Authorization: Token token=${TOKEN}" \
      --header "Content-Type: application/json" \
      --data '{
        "survey": {
          "title": "pizza cheese",
          "question": "what is your favorite pizza cheeze?",
          "answers": ["fresh mozarrella"]
        }
      }'

    echo
