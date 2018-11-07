node.run_state[:jenkins_username] = node['blue_ocean']['jenkins_username']
node.run_state[:jenkins_password] = node['blue_ocean']['jenkins_password']

directory "#{node['jenkins']['master']['home']}/init.groovy.d" do
  owner node['jenkins']['master']['user']
  group node['jenkins']['master']['group']
  mode '0755'
  action :create
end

template "#{node['jenkins']['master']['home']}/init.groovy.d/init.groovy" do
  source 'init.groovy.erb'
  owner 'jenkins'
  group 'jenkins'
  mode '0755'
  action :create
  notifies :restart, 'service[jenkins]', :immediately
end
