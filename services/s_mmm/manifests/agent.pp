class s_mmm::agent($clustername) {
  # set up the agent binaries
  include mmm::agent

  # configure the cluster for this node
  s_mmm::cluster { "mmm_cluster_${clustername}":
    clustername => $clustername
  }
}
