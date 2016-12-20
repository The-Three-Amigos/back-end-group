  #!/bin/bash

    API="http://localhost:4741"
    URL_PATH="/surveys"
    TOKEN="Ru6lWPpdNKiSTY3K0u1kbg2sg+y3n02dzEDINOQYZ9g=--oqfBRf59pfOueq++2NR02Ds07uOZ5D88q8/aNnqD2VQ="

    curl "${API}${URL_PATH}" \
      --include \
      --request POST \
      --header "Content-Type: application/json" \
      --header "Authorization: Token token=${TOKEN}" \
      --data '{
        "survey": {
          "title": "dogs8 rottie",
          "question": "what is your favorite dog?",
          "answers": ["rottweiler"]
        }
      }'

    echo
