#!/bin/bash

# Check if port and directory are provided as arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <port> <directory>"
    exit 1
fi

# Assign the arguments to variables
PORT=$1
DIRECTORY=$2

# Check if anything is listening on the specified port
if ! nc -z localhost $PORT; then
    # If nothing is listening, start the http server
    python3 -m http.server $PORT --directory $DIRECTORY > /dev/null 2>&1 &
    echo "Started http server on port $PORT, serving from $DIRECTORY"
else
    echo "Port $PORT is already in use"
fi
