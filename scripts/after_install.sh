#!/usr/bin/env bash

# kill if any existing servers
sudo pkill -f runserver

# Install libaries
cd /home/ubuntu/analytics-dashboard/

# permissions
sudo chown -R $USER /home/ubuntu/analytics-dashboard/
sudo chown -R $USER /home/ubuntu/analytics-dashboard

# install postgresql & pgadmin4
sudo apt -y install postgresql-12 postgresql-client-12

# install all other libraries
pip install setuptools==44.0.0
pip install -r /home/ubuntu/analytics-dashboard/requirements.txt

# install postgres libraries
sudo apt-get install -y build-essential
sudo apt-get install -y libpq-dev
sudo pip install psycopg2-binary==2.8.6
sudo pip3 install psycopg2==2.9.3

# Set permission for all files
sudo chown 777 /home/ubuntu/analytics-dashboard/


# start server
screen -d -m python3 manage.py runserver 0:8000
