node 'puppet.chi.braintreepayments.com' {
  include ::ntp
}

node 'control.chi.braintreepayments.com' {
  include ::openstack::role::controller
}

node 'storage.chi.braintreepayments.com' {
  include ::openstack::role::storage
}

node 'network.chi.braintreepayments.com' {
  include ::openstack::role::network
}

node 'compute.chi.braintreepayments.com' {
  include ::openstack::role::compute
}

node 'swiftstore1.chi.braintreepayments.com' {
  class { '::openstack::role::swiftstorage':
    zone => '1'
  }
}

node 'swiftstore2.chi.braintreepayments.com' {
  class { '::openstack::role::swiftstorage':
    zone => '2'
  }
}

node 'swiftstore3.chi.braintreepayments.com' {
  class { '::openstack::role::swiftstorage':
    zone => '3'
  }
}

node 'tempest.chi.braintreepayments.com' {
  include ::openstack::role::tempest
}

