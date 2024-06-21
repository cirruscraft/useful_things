#!/bin/bash

# Check if process name and command are provided as arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <process_name> <command_to_run>"
    exit 1
fi

# Assign the arguments to variables
PROCESS_NAME=$1
COMMAND=$2

# Check if the specified process is running
if pgrep -x "$PROCESS_NAME" > /dev/null; then
    echo "Process $PROCESS_NAME is already running"
else
    # If the process is not running, start it
    echo "Starting process $PROCESS_NAME"
    # Run the specified command
    $COMMAND > /dev/null 2>&1 &
fi

# Check if the specified process is running
if pgrep -x "$PROCESS_NAME" > /dev/null; then
    echo "Process $PROCESS_NAME is already running"
else
    # If the process is not running, start it
    echo "Starting process $PROCESS_NAME"
    # Run the specified command
    $COMMAND > /dev/null 2>&1 &
fi

