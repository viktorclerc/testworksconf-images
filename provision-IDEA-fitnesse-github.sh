#!/usr/bin/env bash
set -e

echo I am provisioning IDEA...

# download and unpack IntelliJ IDEA
wget -O /tmp/intellij.tar.gz http://download.jetbrains.com/idea/ideaIC-14.1.4.tar.gz
tar -zxf /tmp/intellij.tar.gz -C /home/vagrant &&
cd /home/vagrant/idea-IC-141.1532.4/bin

mkdir -p /home/vagrant/.IdeaIC14/config/plugins
cd /home/vagrant/.IdeaIC14/config/plugins
wget https://github.com/gshakhn/idea-fitnesse/releases/download/1.0.4/idea-fitnesse-1.0.4.zip
unzip idea-fitnesse-1.0.4.zip

cd /home/vagrant/.IdeaIC14/config/plugins

# create some kind of dekstop entry

echo "[Desktop Entry]
Name=IntelliJ IDEA
Type=Application
Exec=/home/vagrant/idea-IC-141.1532.4/bin/idea.sh
Terminal=false
Icon=idea
Comment=Integrated Development Environment
NoDisplay=false
Categories=Development;IDE;
Name[en]=IntelliJ IDEA" > /home/vagrant/idea.desktop

sudo desktop-file-install /home/vagrant/idea.desktop

# clone Arjan Molenaar's repository
cd /home/vagrant/repoBase
git clone https://github.com/amolenaar/beefing-up-fitnesse.git /home/vagrant/repoBase/beefing-up-fitnesse
sudo chown -R vagrant:vagrant /home/vagrant/repoBase/beefing-up-fitnesse

# set up IntelliJ project files
cd /home/vagrant/repoBase/beefing-up-fitnesse
./gradlew idea

# starting the IDE yields a GUI error
# ./idea.sh
