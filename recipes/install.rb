directory "#{node['jenkins']['master']['home']}/tmp" do
  mode '0777'
  recursive true
  action :create
end

include_recipe 'jenkins::master'

directory "#{node['jenkins']['master']['home']}/tmp" do
  owner node['jenkins']['master']['user']
  group node['jenkins']['master']['group']
  mode '0755'
  action :create
end
