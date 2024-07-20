#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status.

echo "BUILD START"

# Install dependencies
python3.9 -m pip install --upgrade pip
python3.9 -m pip install -r requirements.txt

# Collect static files
python3.9 manage.py collectstatic --noinput --clear

echo "BUILD END"
