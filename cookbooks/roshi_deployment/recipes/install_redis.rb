#
# Cookbook:: roshi_deployment
# Recipe:: install_redis
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'redisio::default'

include_recipe "redisio::install"

