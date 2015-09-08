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
sudo pip install WebTest
sudo pip install livetest
sudo pip install --upgrade robotframework-httplibrary
sudo pip install requests
sudo pip install -U robotframework-requests
sudo pip install robotframework-selenium2library
sudo pip install robotframework-sudslibrary
sudo pip install paramiko
sudo pip install robotframework-sshlibrary

echo -e "export PATH=$PATH:/home/vagrant/rf_demo_code/Test_libraries/Java_libraries/Hello_world/java_keywords/bin" >> /home/vagrant/.bashrc
echo -e "export PATH=$PATH:/home/vagrant/rf_demo_code/Test_libraries/Java_libraries/Java_stack/robot/execution/lib" >> /home/vagrant/.bashrc
echo -e "export PATH=$PATH:/home/vagrant/rf_demo_code/Test_libraries/Swing_libraries/Test_libs" >> /home/vagrant/.bashrc
echo -e "export PATH=$PATH:/home/vagrant/rf_demo_code/Test_libraries/_Spec_files" >> /home/vagrant/.bashrc
