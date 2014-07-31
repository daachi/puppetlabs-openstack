#!/usr/bin/env bash

vagrant_host=$1

vagrant ssh puppet -c "sudo puppet cert clean $vagrant_host.chi.braintreepayments.com"
vagrant ssh $vagrant_host -c "sudo rm -f /var/lib/puppet/ssl/certs/$vagrant_host.chi.braintreepayments.com.pem; \
  sudo puppet agent -t"
vagrant ssh puppet -c 'sudo puppet cert sign --all'
