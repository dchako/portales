#!/bin/sh

#
# This script is useful to setup a new development environment, install required
# packages and dependencies, clone the Git repository, set up the database and so on
#
#echo "Initial system update"
sudo apt-get update
sudo apt-get upgrade -y

echo "Installing Python development tools..."
sudo apt-get install -y libffi-dev libssl-dev libxml2-dev libxslt1-dev libncurses5-dev git python python-dev python-virtualenv libpq-dev postgresql libmysqlclient-dev libmemcached-dev zlib1g-dev libssl-dev build-essential libevent-dev python-pip python-dev fabric

echo "creando entorno virtual"
#virtualenv --distribute env
virtualenv -p /usr/bin/python3 env
source dev/enter.sh

pip install -r requirements.txt

echo "Finish: SUCCESS"