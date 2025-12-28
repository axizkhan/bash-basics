#!/bin/bash

BASE_URL=http://localhost:5050

echo "Fetching all anime..."
curl -s $BASE_URL | jq
