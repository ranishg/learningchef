#
# Cookbook Name:: motd-attributes
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'pp'

node.default['ipaddress'] = "1.1.1.1"
node.default['motd-attributes']['company'] = "Ranish Company"
node.default['motd-attributes']['message'] = "It's a wonderful day today!"

pp node.debug_value('ipaddress')

template "/etc/motd" do
  source "motd.erb"
  mode "0644"
end
