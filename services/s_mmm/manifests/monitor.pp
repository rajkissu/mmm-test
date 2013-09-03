define s_mmm::monitor($clustername) {
  s_mmm::cluster { "s_mmm_monitor_${clustername}":
    mmm_type    => 'monitor',
    clustername => $clustername,
  }
}
