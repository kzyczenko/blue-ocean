# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'bento/centos-7.5'
  config.vm.network 'forwarded_port', guest: 8080, host: 8080
  config.vm.box_check_update = true
  config.vm.hostname = 'blue-ocean'
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
  config.berkshelf.enabled = true
  CHEF_CONFIGURATION = JSON.parse(Pathname(__FILE__).dirname.join('vagrant-config/chef_configuration.json').read)
  config.vm.provision 'chef_solo' do |chef|
    chef.json = CHEF_CONFIGURATION

    chef.run_list = %w(
      recipe[blue_ocean]
    )
  end
end
