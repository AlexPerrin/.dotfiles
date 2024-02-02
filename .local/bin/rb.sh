#!/bin/bash

# Check if the script name is provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <script_name.rs>"
    exit 1
fi

# Extract the script name from the command-line argument
SCRIPT_NAME="${1%.rs}"

# Compile the Rust script
rustc "$SCRIPT_NAME.rs"

# Check if compilation was successful
if [ $? -eq 0 ]; then
    # Run the compiled executable
    "./$SCRIPT_NAME"
else
    echo "Compilation failed. Please check your Rust code."
fi