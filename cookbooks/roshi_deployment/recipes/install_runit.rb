#
# Cookbook:: roshi_deployment
# Recipe:: install_runit
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'runit::default'

runit_service "nginx" do
  action [ :enable, :start ]
end

runit_service "roshi" do
  action [ :enable, :start ]
end
