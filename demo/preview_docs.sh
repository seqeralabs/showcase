#!/bin/bash
# Run this script to install dependencies and preview the docs

# Check if Python and pip are installed
if ! command -v python3 &> /dev/null || ! command -v pip &> /dev/null
then
    echo "Python3 and pip are required, but not found. Please install them."
    exit 1
fi

# Function to check if a Python package is installed
is_installed() {
    pip list | grep "$1" &> /dev/null
}

# Check and install requirements
while IFS= read -r package; do
    # Skip lines that are empty or start with '#'
    if [[ -z "$package" || "$package" == \#* ]]; then
        continue
    fi

    # Extract package name (ignoring version)
    package_name=$(echo "$package" | awk -F'[=><!~]' '{print $1}')
    if is_installed "$package_name"; then
        echo "$package_name is already installed."
    else
        echo "Installing $package..."
        pip install "$package"
    fi
done < docs/requirements.txt

# Start the mkdocs local server
echo "Starting mkdocs server..."
mkdocs serve