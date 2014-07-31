#!/usr/bin/env bash

echo 'deb http://cdn.debian.net/debian wheezy-backports main' | sudo tee /etc/apt/sources.list.d/backports.list > /dev/null

# dedicated haproxy repository
sudo apt-key adv --recv-key --keyserver keyserver.ubuntu.com 95A42FE8353525F9
echo 'deb http://haproxy.debian.net wheezy-backports main' | sudo tee /etc/apt/sources.list.d/haproxy.list > /dev/null

sudo apt-get update -qq
