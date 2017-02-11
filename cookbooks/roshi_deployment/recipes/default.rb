#
# Cookbook:: roshi_deployment
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

cookbook_file '/usr/bin/roshi-server' do
  source 'roshi-server'
  mode '755'
end

include_recipe "apt::default"
include_recipe "roshi_deployment::install_nginx"
include_recipe "roshi_deployment::install_redis"
include_recipe "roshi_deployment::install_runit"

# Only allow processes on same host to access roshi-server port
iptables_rule 'roshi' do
  lines '-I INPUT -p tcp --dport 6302 ! -s 127.0.0.1 -j REJECT --reject-with tcp-reset'
end