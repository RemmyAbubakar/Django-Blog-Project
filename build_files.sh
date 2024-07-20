#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status.
trap 'echo "An error occurred. Exiting..."; exit 1;' ERR

echo "BUILD START"

# Log Python version
python3.9 --version

# Install pip if not available
if ! python3.9 -m pip --version &> /dev/null
then
    echo "pip not found. Installing pip..."
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python3.9 get-pip.py
    rm get-pip.py
fi

# Install dependencies
echo "Installing dependencies..."
python3.9 -m pip install --upgrade pip
python3.9 -m pip install -r requirements.txt

# Collect static files
echo "Collecting static files..."
python3.9 manage.py collectstatic --noinput --clear

echo "BUILD END"
