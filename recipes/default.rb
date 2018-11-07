#
# Cookbook:: blue_ocean
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'blue_ocean::java'
include_recipe 'blue_ocean::install'
include_recipe 'blue_ocean::configure'
include_recipe 'blue_ocean::plugins'
