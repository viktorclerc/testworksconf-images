#!/usr/bin/env bash
set -e

echo I am provisioning Mox and all the stuff needed for the demo

# install atom
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install -y atom

# install Grunt and Bower
sudo npm install -g grunt --save-dev
sudo npm install -g bower

# clone Mox, example project, and SkippyJS git repository
git clone https://github.com/fvanwijk/mox.git /home/vagrant/repoBase/mox
git clone https://github.com/xebia/xsd-open-kitchen.git /home/vagrant/repoBase/xsd-open-kitchen
git clone https://github.com/AlbertBrand/skippyjs.git /home/vagrant/repoBase/skippyjs

sudo chown -R vagrant:vagrant /home/vagrant/repoBase

