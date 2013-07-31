node "master.lan", "puppet" {
  include s_master
}

node "agent1.lan" {
  class { "s_mmm::agent":
    clustername => "agent1",
  }
}

node "agent2.lan" {
  class { "s_mmm::agent":
    clustername => "agent2",
  }
}
