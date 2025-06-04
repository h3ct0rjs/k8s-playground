#!/bin/bash
set -ex # to test stderr output in /var/log/killercoda

echo Installing Tools... # to test stdout output in /var/log/killercoda

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl kubecolor -y
