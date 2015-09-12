#!/usr/bin/env bash
set -e

echo I am provisioning the Galen Framework

# install Galen framework
sudo npm install -g galenframework-cli

# clone git repository
git clone https://github.com/galenframework/galen.git /home/vagrant/repoBase/galen
sudo chown -R vagrant:vagrant /home/vagrant/repoBase/galen
