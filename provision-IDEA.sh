#!/usr/bin/env bash
set -e

echo I am provisioning JDK and IDEA...
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update

echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections &&
sudo apt-get -y install oracle-java7-installer
sudo update-java-alternatives -s java-7-oracle &&

java -version

# install
sudo update-java-alternatives -s java-7-oracle
sudo echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections

wget -O /tmp/intellij.tar.gz http://download.jetbrains.com/idea/ideaIC-14.1.4.tar.gz
tar zxvf /tmp/intellij.tar.gz &&
cd idea-IC-141.1532.4/bin &&

# starting the IDE yields a GUI error
# ./idea.sh
