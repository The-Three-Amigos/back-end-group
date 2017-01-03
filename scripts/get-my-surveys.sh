#!/bin/bash

  API="http://localhost:4741"
  URL_PATH="/my-surveys"
  TOKEN="2IoHLcsdVXpUaFVvDx9kVAlwVm1kjX6OfD4NFtihSKM=--1E5rQlCQbXno9uEJDAiRIaytRyCLGR0oOgEYFkxHZas="

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
