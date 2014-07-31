#!/usr/bin/env bash

h=$1

vagrant ssh $h -c 'sudo puppet agent -t'
vagrant ssh puppet -c 'sudo puppet cert sign --all'
