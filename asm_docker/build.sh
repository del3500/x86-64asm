#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <source_file> <object_file> <executable>"
    exit 1
fi

# Assign arguments to variables
SOURCE_FILE=$1
OBJECT_FILE=$2
EXECUTABLE=$3

# Compile the assembly file to an object file
as "$SOURCE_FILE" -o "$OBJECT_FILE"

# Link the object file to create the final executable
ld "$OBJECT_FILE" -o "$EXECUTABLE"

echo "Build complete. Executable '$EXECUTABLE' created."

