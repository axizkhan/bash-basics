#!/bin/bash

BASE_URL=http://localhost:5050

curl -X POST $BASE_URL \
  -H "Content-Type: application/json" \
  -d '{
    "name": "Naruto",
    "mangaWriter": "Masashi Kishimoto",
    "studio": "Pierrot",
    "rating": 9
  }'
