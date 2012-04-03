#!/bin/bash -ex

apt-get update
apt-get install wget -y

exists() {
    if command -v $1 &>/dev/null
    then
        return 0
    else
        return 1
    fi
}

install_sh="http://opscode.com/chef/install.sh"

if ! exists /usr/bin/chef-client; then
    if exists wget; then
        wget ${install_sh} -O - | bash
    fi
fi

mkdir -p /etc/chef
