require File.dirname(__FILE__) + "/../.common/definition.rb"

options = {
  :os_type_id => "Ubuntu_64",
  :iso_file => "ubuntu-12.04-server-i386.iso",
  :iso_src => "http://releases.ubuntu.com/12.04/ubuntu-12.04-server-i386.iso",
  :iso_md5 => "32184a83c8b5e6031e1264e5c499bc03"
}

Veewee::Session.declare(SESSION.merge(options))
