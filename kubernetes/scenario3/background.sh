#!/bin/bash
# This script installs the docker compose plugin as the default one is too old.
set -eox # to test stderr output in /var/log/killercoda

echo starting... # to test stdout output in /var/log/killercoda

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo apt-get install kubecolor
