#
# Cookbook:: ssh
# Recipe:: default
#
# Copyright:: 2017, Sean Holden, All Rights Reserved.

user = node['ssh']['user']

directory "/home/#{user}/.ssh" do
  owner user
  group user
  mode '700'
end

template "/home/#{user}/.ssh/id_rsa" do
  owner user
  group user
  mode '600'
end

template "/home/#{user}/.ssh/id_rsa.pub" do
  owner user
  group user
  mode '644'
end
