#!/bin/bash

vagrant_host=$1

# Remainder of nodes follow
vagrant ssh $vagrant_host -c "sudo puppet agent -t"

wait
