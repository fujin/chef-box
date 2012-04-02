#!/bin/bash -ex

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
    bash <(wget ${install_sh} -O -)
  else
    if exists curl; then
      bash <(curl -L ${install_sh})
    fi
  fi
fi

mkdir -p /etc/chef
