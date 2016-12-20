  #!/bin/bash

    API="http://localhost:4741"
    URL_PATH="/surveys"

    curl "${API}${URL_PATH}" \
      --include \
      --request POST \
      --header "Content-Type: application/json" \
      --data '{
        "survey": {
          "title": "dogs 2",
          "question": "what is your favorite dog?",
          "answers": ["german shepherd"]
        }
      }'

    echo
