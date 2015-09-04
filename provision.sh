#!/usr/bin/env bash
set -e

# Package Versions
PYTHON_VERSION=2.7.10


echo I am provisioning...
sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y python-pip
sudo apt-get install -y python-wxgtk2.8
sudo pip install robotframework
sudo pip install robotframework-ride==1.5a1
sudo pip install robotframework-selenium2library