#
# Cookbook:: roshi_deployment
# Recipe:: install_nginx
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'nginx::repo'

package 'nginx' do
  action :install
end

