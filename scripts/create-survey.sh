  #!/bin/bash

    API="https://powerful-garden-17029.herokuapp.com"
    URL_PATH="/surveys"

    curl "${API}${URL_PATH}" \
      --include \
      --request POST \
      --header "Content-Type: application/json" \
      --data '{
        "survey": {
          "title": "dogs 3",
          "question": "what is your favorite dog?",
          "answers": ["golden retriever"]
        }
      }'

    echo
