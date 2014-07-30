#!/bin/bash
# Set up the Puppet Master

vagrant ssh puppet -c "sudo apt-get -qq update; \
sudo apt-get install -qq puppetmaster; \
sudo /etc/init.d/puppetmaster stop; \
sudo rm -rf /etc/puppet/modules; \
sudo ln -s /vagrant/modules /etc/puppet/modules; \
sudo ln -s /vagrant/site.pp /etc/puppet/manifests/site.pp; \
sudo /etc/init.d/puppetmaster start; \
sudo puppet agent -t"
