#!/usr/bin/env bash

# clean codedeploy-agent files
sudo rm -rf /home/ubuntu/install

# installing dependencies for code deploy
sudo apt-get -y update
sudo apt-get -y install ruby
sudo apt-get -y install wget
cd /home/ubuntu
wget https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/install
sudo chmod +x ./install 
sudo ./install auto
# sudo service codedeploy-agent status (or) start

# installing required software packages
sudo apt-get -y update
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt-get install -y python3.8 python3.8-dev python3.8-venv python3-pip supervisor nginx
pip install --user --upgrade virtualenv

# clean application files
sudo rm -rf /home/ubuntu/analytics-dashboard