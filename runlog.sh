#!/bin/bash

export NODE_ENV=production
export PORT=5050

echo "Starting backend..."
node index.js >> app.log 2>&1 

#1 output log console.log()
#2 error
#> this means redirecrt as well
echo "Backend started with PID $!"
