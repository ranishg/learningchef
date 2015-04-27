#
# Cookbook Name:: node
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

search("node", "*:*").each do |matching_node|
  log matching_node.to_s
end
