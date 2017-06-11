#
# Cookbook:: jboss
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


# => Update System
include_recipe 'apt' if platform?('ubuntu')
include_recipe 'java' if node['jboss']['install_java']
include_recipe 'jboss::install'

