# -*- mode: ruby -*-
# vi: set ft=ruby :

##################
# NOTE: For handling external devices (USB wifi & ethernet):
# INSTALL VirtualBox Extension Pack (https://www.virtualbox.org/wiki/Downloads)
# Afterward, you can run `VBoxManage list extpacks` and see output similar to below:
# VBoxManage list extpacks
# Extension Packs: 1
# Pack no. 0:   Oracle VM VirtualBox Extension Pack
# Version:      5.1.14
# Revision:     112924
# Edition:
# Description:  USB 2.0 and USB 3.0 Host Controller, Host Webcam, VirtualBox RDP, PXE ROM, Disk Encryption, NVMe.
# VRDE Module:  VBoxVRDP
# Usable:       true
# Why unusable:


##############
require 'yaml'

#settings = YAML.load_file("settings.yml")
Vagrant.configure(2) do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
        vb.cpus = "2"
        end
#config.vm.network "forwarded_port", guest: 3000, host: 3001, auto_correct: true
   config.vm.network "private_network", ip: "192.168.33.111"
     config.vm.provision :ansible do |ansible|
         ansible.playbook = "playbook.yml"
     end
end
