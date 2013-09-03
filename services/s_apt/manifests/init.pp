class s_apt {
  include puppet::repo::puppetlabs
  class { 'apt':
    always_apt_update => true,
  }

  # update apt repos before installing any packages
  Class['puppet::repo::puppetlabs'] -> Package <||>
}
