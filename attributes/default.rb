default['jenkins']['master']['jvm_options'] = "-Djenkins.install.runSetupWizard=false -Djava.io.tmpdir=#{node['jenkins']['master']['home']}/tmp"
default['jenkins']['master']['install_method'] = 'package'
default['jenkins']['master']['version'] = '2.138.2-1.1'
default['jenkins']['executor']['protocol'] = 'http'
