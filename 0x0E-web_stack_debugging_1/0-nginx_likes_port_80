#!/usr/bin/env bash
# This script ensures Nginx is listening on port 80

# Check if Nginx configuration has the correct listen directive
if ! grep -q "listen 80;" /etc/nginx/nginx.conf; then
    echo "Adding 'listen 80;' directive to Nginx configuration..."
    echo "listen 80;" | sudo tee -a /etc/nginx/nginx.conf > /dev/null
fi

# Restart Nginx to apply changes
echo "Restarting Nginx..."
sudo systemctl restart nginx

# Wait for Nginx to restart
sleep 2

# Check if Nginx is listening on port 80
if sudo lsof -i :80 | grep -q "nginx"; then
    echo "Nginx is now listening on port 80."
else
    echo "Failed to configure Nginx to listen on port 80."
fi
