#!/usr/bin/env bash 

# Make the directory 
if [ ! -d "memgpt/humans/examples" ]; then
    mkdir -p memgpt/humans/examples
fi

if [ -f "memgpt/humans/examples/me.txt" ]; then
    poetry run python main.py --human me.txt
else 
    echo "No me.txt file found in memgpt/humans/examples/"
    cp memgpt/personas/examples/sam.txt memgpt/humans/examples/me.txt
fi