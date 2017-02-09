#
# Cookbook:: roshi_deployment
# Recipe:: install_runit
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'runit::default'

runit_service "nginx"
