node['blue_ocean']['plugins'].each do |name, version|
  jenkins_plugin name do
    version version
    install_deps false
    action :install
    notifies :restart, 'service[jenkins]', :delayed
  end
end
