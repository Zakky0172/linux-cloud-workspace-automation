#!/bin/bash

echo "Setting up workspace..."

DATA_DIR=$(yq '.workspace.data' config.yaml | tr -d '"')
TEMP_DIR=$(yq '.workspace.temp' config.yaml | tr -d '"')
BACKUP_DIR=$(yq '.workspace.backup' config.yaml | tr -d '"')
LOG_FILE=$(yq '.logging.file' config.yaml | tr -d '"')

LOG_DIR=$(dirname "$LOG_FILE")

mkdir -p "$DATA_DIR" "$TEMP_DIR" "$BACKUP_DIR"
mkdir -p "$LOG_DIR"

touch "$LOG_FILE"

echo "Setup completed on $(date)" >> "$LOG_FILE"

echo "Workspace setup completed successfully!"

