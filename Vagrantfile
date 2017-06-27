# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "centos"
  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.4.2/centos64-x86_64-20140116.box"
  config.vm.synced_folder ".", "/vagrant", :mount_options => ['dmode=775', 'fmode=664']
  
  config.vm.define "ansibleserver" do |node|
    node.vm.hostname = "ansibleserver"
    node.vm.network :private_network, ip:"192.168.0.111", virtualbox__intnet: "private_net"
    node.vm.provider "virtualbox" do |v|
        v.name = "ansibleserver-node"
        v.memory = 512
    end
    node.vm.provision "shell", :path => "provision.sh"
  end

  config.vm.define "opencvserver" do |node|
    node.vm.hostname = "opencvserver"
    node.vm.network :private_network, ip:"192.168.0.112", virtualbox__intnet: "private_net"
    node.vm.provider "virtualbox" do |v|
        v.name = "opencvserver-node"
        v.memory = 512
    end
  end

end



  