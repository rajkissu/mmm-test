class s_master {
  # update apt repository
  @exec { 'apt-get update':
    command => '/usr/bin/apt-get update',
    tag     => update,
  }

  # run SSL configuration
  @exec { 'puppetdb-ssl-setup':
    command => '/usr/sbin/puppetdb-ssl-setup',
    creates => '/etc/puppetdb/ssl',
    tag     => puppetdb,
  }

  class { 'apache': }
  class { 'puppet::master':
    version => '3.1.0-1puppetlabs1',
  }

  class { 'puppetdb': }
  class { 'puppetdb::master::config': }

  # update apt repos before installing any packages
  Exec <| tag == 'update' |> -> Package <| |>

  # run ssl config script before setting up puppetdb on puppetmaster
  Class['puppetdb'] -> Exec <| tag == 'puppetdb' |> -> Class['puppetdb::master::config']
}
