#!/bin/bash

# Get the directory where the symlinked script points to (not where it's called from)
SCRIPT_DIR="$( cd "$( dirname "$(readlink -f "${BASH_SOURCE[0]}")" )" && pwd )"
# Python script is in the same directory
PYTHON_SCRIPT="$SCRIPT_DIR/moyu_go.py"

echo "Press 'Control + C' to exit."

trap 'echo ": Bye bye~"; exit' SIGINT

while true; do
    python3 "$PYTHON_SCRIPT"
    
    random_number=$(( (RANDOM % 11) + 10 ))  # random 10-20
    sleep "$random_number"   # in sec
done

