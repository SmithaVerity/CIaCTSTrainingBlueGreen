#!/bin/bash

set -e

sudo apt-get update
sudo apt-get install -y nginx
sudo systemctl enable nginx

echo "${file_content}!" > /var/www/html/index.nginx-debian.html

systemctl restart nginx

