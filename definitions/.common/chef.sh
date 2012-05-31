#!/bin/bash -ex

apt-get update
apt-get install wget -y

install_sh="http://opscode.com/chef/install.sh"

wget ${install_sh} && bash install.sh

mkdir -p /etc/chef

apt-get autoremove -y
apt-get autoclean -y

