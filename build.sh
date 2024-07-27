#!/usr/bin/env bash
# Exit on error
set -o errexit

# Upgrade pip to the latest version
/opt/render/project/src/.venv/bin/python3.7 -m pip install --upgrade pip

# Install project dependencies
/opt/render/project/src/.venv/bin/python3.7 -m pip install -r requirements.txt


# Modify this line as needed for your package manager (pip, poetry, etc.)
pip install -r requirements.txt

# Convert static asset files
python manage.py collectstatic --no-input

# Apply any outstanding database migrations
python manage.py migrate