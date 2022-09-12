
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

sudo apt-get update
sudo apt-get install -y python3 python3-dev python3-pip
pip install --user --upgrade virtualenv

# delete app
sudo rm -rf /home/ubuntu/analytics-dashboard