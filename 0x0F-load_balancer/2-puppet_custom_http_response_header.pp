#!/usr/bin/env bash
# This script automates the task of creating a custom HTTP header response using Puppet

# Define the Puppet manifest file path
puppet_manifest="2-puppet_custom_http_response_header.pp"

# Create the Puppet manifest file
cat > $puppet_manifest <<EOF
# Puppet manifest to configure Nginx to include a custom HTTP header

# Define a class to configure Nginx
class nginx_custom_header {

  # Install Nginx package
  package { 'nginx':
    ensure => installed,
  }

  # Define custom header configuration
  \$custom_header_config = 'add_header X-Served-By \$hostname;'

  # Configure Nginx default site
  file { '/etc/nginx/sites-available/default':
    ensure  => file,
    content => "# Managed by Puppet\nserver {\n    listen 80 default_server;\n    listen [::]:80 default_server;\n    server_name _;\n    root /var/www/html;\n    index index.html index.htm index.nginx-debian.html;\n    location / {\n        try_files \$uri \$uri/ =404;\n    }\n    \$custom_header_config\n    location ~ \\.php\$ {\n        include snippets/fastcgi-php.conf;\n        fastcgi_pass unix:/var/run/php/php7.0-fpm.sock;\n    }\n    location ~ /\\.ht {\n        deny all;\n    }\n}",
    notify  => Service['nginx'],
  }
}

# Apply the class to the node
node default {
  include nginx_custom_header
}
EOF

# Apply the Puppet manifest
sudo puppet apply $puppet_manifest

# Clean up the manifest file
rm $puppet_manifest
