  #!/bin/bash

    API="http://localhost:4741"
    URL_PATH="/surveys"
    TOKEN="9DfaHrqq5n46MGzhfazCUY0SNwSaWMKdlq1iXgJQPP0=--hC5YDbTCObDkWlMedJOHXWASaGqKepWr7NqH5Du/grU="

    curl "${API}${URL_PATH}" \
      --include \
      --request POST \
      --header "Content-Type: application/json" \
      --header "Authorization: Token token=${TOKEN}" \
      --data '{
        "survey": {
          "title": "Drugs",
          "question": "fave drug?",
          "answers": ["life"]
        }
      }'

    echo
