#!/usr/bin/env bash
set -e

echo "I am provisioning generics..."
sudo apt-get update
sudo apt-get install -y git


# install JDK as it was meant to be - from scratch

mkdir /home/vagrant/java
cd /home/vagrant/java
curl -L --cookie "oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.tar.gz -o jdk-8-linux-x64.tar.gz

tar -zxf jdk-8-linux-x64.tar.gz

sudo mkdir -p /usr/lib/jvm
sudo mv ./jdk1.8.* /usr/lib/jvm/

# register Java
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.8.0_60/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.8.0_60/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/jdk1.8.0_60/bin/javaws" 1

sudo chmod a+x /usr/bin/java 
sudo chmod a+x /usr/bin/javac 
sudo chmod a+x /usr/bin/javaws
sudo chown -R root:root /usr/lib/jvm/jdk1.8.0_60

export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_60

java -version

# install maven
sudo apt-get purge -y maven
if ! [ -e /tmp/apache-maven-3.3.3-bin.tar.gz ]; then
  (cd /tmp; curl -OL http://mirror.olnevhost.net/pub/apache/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz);
fi

sudo tar -zxf /tmp/apache-maven-3.3.3-bin.tar.gz -C /usr/local/
sudo ln -s /usr/local/apache-maven-3.3.3/bin/mvn /usr/bin/mvn
echo "Maven is on version `mvn -v`"

# install chromium for Axini and for Galen
sudo apt-get -y install chromium-browser

# install chromedriver
mkdir -p /home/vagrant/chromedriver

wget -N http://chromedriver.storage.googleapis.com/2.10/chromedriver_linux64.zip -P /home/vagrant/chromedriver
unzip /home/vagrant/chromedriver/chromedriver_linux64.zip -d /home/vagrant/chromedriver
chmod +x /home/vagrant/chromedriver/chromedriver
sudo mv -f /home/vagrant/chromedriver/chromedriver /usr/local/share/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/bin/chromedriver

# install npm -- Guillaume, Edze, Marc
sudo apt-add-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get -y install nodejs

# install bower gulb -- Edze and Marc

# create and set path to include own 'bin' directory
mkdir -p /home/vagrant/bin
export PATH=$PATH:/home/vagrant/bin

# create base directory into which all github repositories will be cloned
mkdir /home/vagrant/repoBase

sudo chown -R vagrant:vagrant /home/vagrant/repoBase
sudo chown -R vagrant:vagrant /home/vagrant/bin
