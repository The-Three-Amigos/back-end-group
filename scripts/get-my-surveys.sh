#!/bin/bash

  API="http://localhost:4741"
  URL_PATH="/my-surveys"
  TOKEN="Ygsk3xha0vHQo89YVHfLYfdUeUMNyYb37U2HN3enleA=--llIhkHRbZTw9hEs02x6Zs7fh2W0tHqNlaHFtu9LLPMU="

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
