# -*- mode: ruby -*-
# vi: set ft=ruby :

$master_host = "puppet.lan"

Vagrant.configure("2") do |config|
  config.vm.box = "dbsq64"

  config.vm.box_url = "http://www.emken.biz/vagrant-boxes/debsqueeze64.box"

  config.vm.network :public_network

  config.vm.provider :virtualbox do |vb|
    # 1GB of RAM
    vb.customize [ "modifyvm", :id, "--memory", "1024" ]
  end

  # puppet master
  config.vm.define :master do |master|
    master.vm.hostname = $master_host

    # Share additional folders to the guest VM.
    master.vm.synced_folder "./manifests", "/etc/puppet/manifests"
    master.vm.synced_folder "./modules", "/etc/puppet/modules"
    master.vm.synced_folder "./services", "/etc/puppet/services"

    master.vm.provision :puppet do |puppet|
      puppet.manifests_path = "./manifests"
      puppet.manifest_file  = "master.pp"
      puppet.module_path    = [ "./modules", "./services" ]
      puppet.options        = "--debug"
    end
  end

  # agent nodes
  config.vm.define :monitor do |agent|
    agent.vm.hostname = "monitor.lan"

    agent.vm.provision :puppet_server do |puppet|
      puppet.puppet_server = $master_host
      puppet.options       = "--test --debug"
    end
  end

  config.vm.define :agent1 do |agent|
    agent.vm.hostname = "agent1.lan" 

    agent.vm.provision :puppet_server do |puppet|
      puppet.puppet_server = $master_host
      puppet.options       = "--test --debug"
    end
  end

  config.vm.define :agent2 do |agent|
    agent.vm.hostname = "agent2.lan" 

    agent.vm.provision :puppet_server do |puppet|
      puppet.puppet_server = $master_host
      puppet.options       = "--test --debug"
    end
  end
end
