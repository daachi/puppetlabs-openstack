#!/bin/bash
# Set up the Puppet Master

sudo apt-get -qq update
sudo apt-get install -qq puppetmaster

sudo /etc/init.d/puppetmaster stop
sudo rm -rf /etc/puppet/modules
sudo ln -s /vagrant/modules /etc/puppet/modules
sudo ln -s /vagrant/site.pp /etc/puppet/manifests/site.pp

# setup openstack?
sudo ln -s /openstack /etc/puppet/modules/
sudo ln -s /openstack/examples/hiera.yaml /etc/puppet/hiera.yaml
sudo mkdir -p /etc/puppet/hieradata
sudo ln -s /openstack/examples/common.yaml /etc/puppet/hieradata/common.yaml

sudo /etc/init.d/puppetmaster start

sudo puppet agent -t
