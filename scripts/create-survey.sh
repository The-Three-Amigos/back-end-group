  #!/bin/bash

    API="http://localhost:4741"
    URL_PATH="/surveys"
    TOKEN="MiOsOeWOlz0QEayR9vRw8qB/o2hOqHX8RTMSKDOCdOI=--cQ9/T/XlQtlJcGXERt7XM0jIyx/JuVRRFO68ruWV/D8="

    curl "${API}${URL_PATH}" \
      --include \
      --request POST \
      --header "Content-Type: application/json" \
      --header "Authorization: Token token=${TOKEN}" \
      --data '{
        "survey": {
          "title": "Lakes",
          "question": "fave lake?",
          "answers": ["life"]
        }
      }'

    echo
