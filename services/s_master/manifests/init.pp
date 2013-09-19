class s_master {
  include s_apt
  include puppetdb

  class { 'puppet::master':
    version                  => '3.3.0-1puppetlabs1',
    modulepath               => '/etc/puppet/modules:/etc/puppet/services',
    storeconfigs             => true,
    puppetdb_startup_timeout => '120',
  }

  # run SSL configuration
  exec { 'puppetdb-ssl-setup':
    path    => '/usr/sbin:/usr/bin:/bin',
    creates => [
      '/etc/puppetdb/ssl/private.pem',
      '/etc/puppetdb/ssl/public.pem',
      '/etc/puppetdb/ssl/ca.pem',
      ],
  }

  # run ssl config script before setting up puppetdb on puppetmaster
  Exec['Certificate_Check'] -> Exec['puppetdb-ssl-setup'] -> Class['puppetdb::master::config']
}
