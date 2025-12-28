#!/bin/bash

BASE_URL=http://localhost:5050
ID=$1

result=curl -X DELETE $BASE_URL/$ID | jq
echo "Deleted anime with id $ID"
echo "$result"
