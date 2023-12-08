# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|

  ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'
  
  config.vm.box = "bento/fedora-38"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "profcom"
    vb.memory = "4096"
    vb.cpus = 1
  end

  config.vm.hostname = "profcom"

  config.vm.synced_folder ".", "/home/vagrant/app", mount_options: ["dmode=775,fmode=777"]
  
  config.vm.network "forwarded_port", guest: 80, host: 8000
  config.vm.network "forwarded_port", guest: 3001, host: 3001
  config.vm.network "forwarded_port", guest: 5432, host: 5432
  
  config.vm.provision "shell", path: "install.sh"

end
