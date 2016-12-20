  #!/bin/bash

    API="http://localhost:4741"
    URL_PATH="/surveys"
    TOKEN="mOO+hjY/3A+d6EHzTtR0w9bR1QduRb5tDjFtTGgi3Bo=--wU0oZQrU1l3b9pZAg1fecaJIPgtcsZfzAIFgTBSh7B8="

    curl "${API}${URL_PATH}/${ID}"
      --include
      --request PATCH
      --header "Authorization: Token token=${TOKEN}"
      --header "Content-Type: application/json"
      --data '{
        "survey": {
          "title": "dogs shepherd",
          "question": "Shepherd Dog",
        }
      }'

    echo
