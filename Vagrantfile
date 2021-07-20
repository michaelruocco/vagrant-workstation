# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.provider "virtualbox"
  config.vm.box = "peru/ubuntu-20.04-desktop-amd64"
  config.vm.box_version = "20210701.01"

  config.vm.provision :shell, inline: "sudo usermod -a -G sudo vagrant"

  # Add Google Chrome repository
  config.vm.provision :shell, inline: "wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub|sudo apt-key add -"
  config.vm.provision :shell, inline: "sudo sh -c 'echo \"deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main\" > /etc/apt/sources.list.d/google.list'"

  config.vm.provision :shell, inline: "sudo apt-get update -y"
  config.vm.provision :shell, inline: "sudo apt-get upgrade -y"

  #config.vm.provision :shell, inline: "sudo apt-get -y update-manager-core"
  #config.vm.provision :shell, inline: "sudo apt-get -y do-release-upgrade"

  config.vm.provision :shell, inline: "sudo apt-get install -y --no-install-recommends ubuntu-desktop"
  config.vm.provision :shell, inline: "sudo apt-get install -y --no-install-recommends virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11"

  config.vm.provision :shell, inline: "sudo apt-get install -y google-chrome-stable chromium-browser firefox"
  config.vm.provision :shell, inline: "sudo apt-get install -y manpages-fr-extra curl libxml2-utils"
  config.vm.provision :shell, inline: "sudo apt-get install -y npm"
  config.vm.provision :shell, inline: "sudo apt-get install -y awscli"

  config.vm.provision :shell, inline: "export SDKMAN_DIR='/home/vagrant' && curl -s 'https://get.sdkman.io' | bash"
  config.vm.provision :shell, inline: "source '/home/vagrant/.sdkman/bin/sdkman-init.sh'"
  config.vm.provision :shell, inline: "source '/home/vagrant/.sdkman/bin/sdkman-init.sh'"
  config.vm.provision :shell, inline: "sdk install java < /dev/null"
  config.vm.provision :shell, inline: "sdk install gradle < /dev/null"
  config.vm.provision :shell, inline: "sdk install maven < /dev/null"

  config.vm.provision :shell, inline: "sudo snap install intellij-idea-community --classic"
  config.vm.provision :shell, inline: "sudo snap install code --classic"
  
  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end
