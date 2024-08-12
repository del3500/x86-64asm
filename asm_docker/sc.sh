#!/bin/bash

# Define variables
IMAGE_NAME="latest_be"  # The name of your Docker image
LOCAL_DIR="/Users/del/desktop/dev/x86-64asm"  # Your specified local directory
CONTAINER_DIR="/code"  # Absolute path inside the container

# Run the Docker container
docker run --platform linux/amd64 -it --rm -v "$LOCAL_DIR:$CONTAINER_DIR" "$IMAGE_NAME"

