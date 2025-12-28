#!/bin/bash

BASE_URL=http://localhost:5050

animes=("One Piece" "Bleach" "Attack on Titan")

for name in "${animes[@]}"; do
  curl -s -X POST $BASE_URL \
    -H "Content-Type: application/json" \
    -d "{\"name\":\"$name\",\"rating\":8}" | jq
done

echo "Data seeded"
