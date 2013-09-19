class s_agent {
  include s_apt

  # set up puppet agent
  class { 'puppet::agent':
    version       => '3.3.0-1puppetlabs1',
    puppet_server => 'puppet.lan',
    splay         => true,
  }
}
