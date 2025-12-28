#!/bin/bash

export NODE_ENV=production
export PORT=5050

echo "Starting backend..."
node index.js >> app.log 2>&1 

echo "Backend started with PID $!"
