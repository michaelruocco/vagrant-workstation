# Dev Workstation

This repo contains scripts for provisioning a development VM with a few standard
tools set up using Vagrant.

## Installing plugins

In order to spin up the VM using Vagrant you will first need to install the
vagrant-reload plugin by running:

```bash
vagrant plugin install vagrant-reload
```

If you are intending on using VMWare then you will also need to install the
vagrant-vmware-desktop plugin by running:

```bash
vagrant plugin install vagrant-vmware-desktop
```

If you are using virtual box it is helpful to install the guest additions plugin:

```bash
vagrant plugin install vagrant-vbguest
```

## Running with Virtual Box

To spin up the development VM using virtual box you can run the following command

```bash
vagrant up --provider="virtualbox"
```