#
# Cookbook:: roshi_deployment
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe "apt::default"
include_recipe "roshi_deployment::install_nginx"
include_recipe "roshi_deployment::install_redis"
include_recipe "roshi_deployment::install_runit"

cookbook_file '/usr/bin/roshi-server' do
  source 'roshi-server'
  mode '755'
end
