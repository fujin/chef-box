require File.dirname(__FILE__) + "/../.common/definition.rb"

options = {
  :os_type_id => "Ubuntu_64",
  :iso_file => "ubuntu-12.04-server-amd64.iso",
  :iso_src => "http://releases.ubuntu.com/12.04/ubuntu-12.04-server-amd64.iso",
  :iso_md5 => "f2e921788d35bbdf0336d05d228136eb"
}

Veewee::Session.declare(SESSION.merge(options))
