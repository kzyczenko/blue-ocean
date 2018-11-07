node['blue_ocean']['plugins'].each do |name, version|
  jenkins_plugin name do
    version version
    action :install
    notifies :restart, 'service[jenkins]', :delayed
  end
end
