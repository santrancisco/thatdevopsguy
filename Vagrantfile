# -*- mode: ruby -*-
# vi: set ft=ruby :

##############
require 'yaml'

Vagrant.configure(2) do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
        vb.cpus = "2"
        end
#config.vm.network "forwarded_port", guest: 3000, host: 3001, auto_correct: true
    config.vm.network "private_network", ip: "192.168.33.111"
    config.vm.provision "install_software",type: "ansible" do |ansible|
        ansible.playbook = "install_software.yml"
    end
     config.vm.provision "manage_user",type: "ansible" do |ansible|
        ansible.playbook = "manage_user.yml"
        ansible.ask_vault_pass = true
    end

end
