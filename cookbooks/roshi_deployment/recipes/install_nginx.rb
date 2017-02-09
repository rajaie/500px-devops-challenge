#
# Cookbook:: roshi_deployment
# Recipe:: install_nginx
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'nginx::repo'

package 'nginx' do
  action :install
end

#service 'nginx' do
#  supports status: true, restart: true, reload: true
#  action [ :enable, :start ]
#end
