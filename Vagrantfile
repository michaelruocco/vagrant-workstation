Vagrant.configure("2") do |config|
  config.vm.box = "generic/centos8"

  config.vm.provider "hyperv" do |hyperv|
    hyperv.vmname = "dev-workstation"
    hyperv.cpus = 2
    hyperv.maxmemory = 6144
  end

  config.vm.provider "vmware-desktop" do |vmware|
    vmware.gui = true
    vmware.vmx["memsize"] = "6144"
    vmware.vmx["numvcpus"] = "2"
  end

  config.vm.provider "virtualbox" do |virtualbox|
    virtualbox.gui = true
    virtualbox.name = "dev-workstation"
    virtualbox.memory = 6144
    virtualbox.cpus = 2
    virtualbox.customize ['modifyvm', :id, '--graphicscontroller', 'vmsvga']
    virtualbox.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
  end

  if Vagrant::Util::Platform::darwin?
    config.vm.provision :shell, path: "provisioning/fix-mac-flicker.sh"
  end
  
  config.vm.provision :shell, path: "provisioning/setup-gui.sh"
  config.vm.provision :shell, path: "provisioning/install-utilities.sh"
  config.vm.provision :shell, path: "provisioning/install-aws-cli.sh"
  config.vm.provision :shell, path: "provisioning/install-java-sdkman.sh", privileged: false
  config.vm.provision :shell, path: "provisioning/install-npm.sh", privileged: false
  config.vm.provision :shell, path: "provisioning/install-docker.sh", privileged: false
  config.vm.provision :shell, path: "provisioning/install-chrome.sh", privileged: false

  config.vm.provision :shell, path: "provisioning/install-snap.sh", privileged: false
  config.vm.provision :shell, path: "provisioning/install-intellij.sh", privileged: false
  config.vm.provision :shell, path: "provisioning/install-vs-code.sh", privileged: false

  config.vm.provision :reload

end
