#!/bin/bash

PROJECT_NAME=${1}

if [[ -z "$PROJECT_NAME" ]]; then
    echo "Usage: $0 <project_name>"
    exit 1
fi

echo "Creating project structure for: $PROJECT_NAME"

# Create directory structure
# The -p flag creates parent directories as needed and doesn't error if they exist
#add date in format YYYYMMDD to project name
PROJECT_NAME="$(date +%Y%m%d)_$PROJECT_NAME"
mkdir -p "$PROJECT_NAME"/{data,analysis/{utils,01_data_exporation},docs}

echo "Created project: $PROJECT_NAME"

tree $PROJECT_NAME