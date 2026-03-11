#!/bin/bash

echo "Starting deployment"

set -e

echo "Pulling latest code"
git pull origin main

echo "Building frontend"

cd frontend
npm ci
npm run build

sudo rm -rf /var/www/html/*
sudo cp -r build/* /var/www/html/

cd ..

echo "Setting up backend"

cd backend

python3 -m venv venv
source venv/bin/activate

pip install -r requirements.txt

echo "Restarting backend"

pkill gunicorn || true

gunicorn --bind 127.0.0.1:5000 app:app &

cd ..

echo "Reload nginx"

sudo nginx -s reload

echo "Deployment completed"
