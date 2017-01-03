#!/bin/bash

  API="http://localhost:4741"
  URL_PATH="/my-surveys"
  TOKEN="ZdLJFts4YsIhZIj4+43H4Dc3h6UqT6oBVJmsA18H58o=--spjiL7UOhJORhKt/7lhntlXRtYBfyFZjmdi7oDmBEg4="

  curl "${API}${URL_PATH}" \
    --include \
    --request GET \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=${TOKEN}" \
    --data '{
      "survey": {
         "title": "lakes",
         "question": "What is your favorite lake?",
         "answers": ["Michigan"]
      }
    }'

  echo
