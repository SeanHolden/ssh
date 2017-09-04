#
# Cookbook:: ssh
# Recipe:: default
#
# Copyright:: 2017, Sean Holden, All Rights Reserved.

_user = node['ssh']['user']

directory "/home/#{_user}/.ssh" do
  owner _user
  group _user
  mode '700'
end

template "/home/#{_user}/.ssh/id_rsa" do
  owner _user
  group _user
  mode '600'
end

template "/home/#{_user}/.ssh/id_rsa.pub" do
  owner _user
  group _user
  mode '644'
end

template "/home/#{_user}/.ssh/known_hosts" do
  owner _user
  group _user
  mode '600'
end
