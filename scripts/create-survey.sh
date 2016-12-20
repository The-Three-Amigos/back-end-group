  #!/bin/bash

    API="https://powerful-garden-17029.herokuapp.com"
    URL_PATH="/surveys"

    curl "${API}${URL_PATH}" \
      --include \
      --request POST \
      --header "Content-Type: application/json" \
      --data '{
        "survey": {
<<<<<<< HEAD
          "title": "dogs 5",
=======
          "title": "dogs 3",
>>>>>>> curl request to create survey
          "question": "what is your favorite dog?",
          "answers": ["golden retriever"]
        }
      }'

    echo
