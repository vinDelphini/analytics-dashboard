#!/usr/bin/env bash

# Install libaries
cd /home/ubuntu/analytics-dashboard/
sudo apt-get install python3-pip
sudo apt-get install python3-venv
python3 -m venv venv
source venv/bin/activate
pip install django

# Set permission for all files
sudo chown 777 /home/ubuntu/photofolio/

# start server
screen -d -m python3 manage.py runserver 0:8000