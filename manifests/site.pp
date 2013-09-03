$mmm_multi_cluster_monitor = true
$localsubnet = 'localhost'

node baseagent {
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
}

node "monitor.lan" inherits baseagent {
  include mmm::monitor

  s_mmm::monitor { 'linkorb-m1':
    clustername => 'linkorb-m1',
  }
}

node /agent\d.lan/ inherits baseagent {
  class { "s_mmm::agent":
    clustername => 'linkorb-m1',
  }
}
