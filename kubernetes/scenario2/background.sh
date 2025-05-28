#!/bin/bash
# This script installs the docker compose plugin as the default one is too old.
set -eox # to test stderr output in /var/log/killercoda

echo starting... # to test stdout output in /var/log/killercoda

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo apt-get install kubecolor

# Set kubecolor as kubectl and k
echo "alias kubectl='kubecolor'" >> /etc/profile.d/alias_kubecolor.sh
echo "alias k='kubecolor'" >> /etc/profile.d/alias_kubecolor.sh
chmod +x /etc/profile.d/alias_kubecolor.sh