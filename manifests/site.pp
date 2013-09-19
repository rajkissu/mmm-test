node base {
  include s_agent

  @@host { $::fqdn:
    ensure       => present,
    ip           => $::ipaddress_eth1,
    host_aliases => $::hostname,
  }

  Host <<||>>
}

node "puppet.lan", "puppet" {
  include s_agent
  include s_master
  include s_master::hiera

  Host <<||>>
}

node "monitor.lan" inherits base {
  include mmm::monitor
  include s_mmm::cluster
}

node /agent\d.lan/ inherits base {
  include mmm::agent
  include s_mmm::cluster
}
