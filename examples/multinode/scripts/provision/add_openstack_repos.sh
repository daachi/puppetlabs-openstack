#!/bin/bash
# add openstack debian repos

echo 'deb http://archive.gplhost.com/debian icehouse-backports main' | sudo tee /etc/apt/sources.list.d/openstack.list > /dev/null
echo 'deb http://archive.gplhost.com/debian icehouse main' | sudo tee -a /etc/apt/sources.list.d/openstack.list > /dev/null

apt-get update -qq
sudo apt-get install -qq python-argparse

sudo apt-key adv --recv-key --keyserver keyserver.ubuntu.com 64AA94D00B849883

sudo apt-get update -qq
sudo apt-get install gplhost-archive-keyring
