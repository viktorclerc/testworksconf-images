#!/usr/bin/env bash
set -e

echo I am provisioning SBT and Gatling

# install SBT
sudo curl -s https://raw.githubusercontent.com/paulp/sbt-extras/master/sbt > /home/vagrant/bin/sbt && sudo chmod 0755 /home/vagrant/bin/sbt

# clone Gatling git repository
git clone https://github.com/gatling/gatling-sbt-plugin-demo.git /home/vagrant/repoBase/gatling-sbt-plugin-demo
sudo chown -R vagrant:vagrant /home/vagrant/repoBase/gatling-sbt-plugin-demo

# run sbt to download all kinds of stuff
cd /home/vagrant/repoBase/gatling-sbt-plugin-demo
sbt
