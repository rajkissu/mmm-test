$mmm_multi_cluster_monitor = true

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

  Host <<||>>
}

node "monitor.lan" inherits base {
  include mmm::monitor

  s_mmm::monitor { 'linkorb-m1':
    clustername => 'linkorb-m1',
  }
}

node /agent\d.lan/ inherits base {
  class { "s_mmm::agent":
    clustername => 'linkorb-m1',
  }
}
