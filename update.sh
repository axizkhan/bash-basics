#!/bin/bash

BASE_URL=http://localhost:5050
ID=$1

curl -X PUT $BASE_URL/$ID \
  -H "Content-Type: application/json" \
  -d '{"rating":10}' 
