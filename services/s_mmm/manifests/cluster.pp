# MMM config

define s_mmm::cluster(
  $clustername,
  $mmm_type = 'agent',
) {
  case $clustername {
    'linkorb-m1': {
      # configure the cluster
      mmm::cluster::config { $clustername:
        ensure               => present,
        cluster_interface    => 'eth0:1',
        port                 => '9989',
        replication_password => 'PAkHt-_S3_x8q01J',
        agent_password       => 'gRtQ-We_W3nrXiFI',
        monitor_password     => 'N7_kh8A_YME5-H8a',
        masters              => [ 'agent1', 'agent2' ],
        readers              => [ 'agent1', 'agent2' ],
        writer_virtual_ip    => '192.168.193.203',
        reader_virtual_ips   => [ '192.168.193.204' ],
        reader_user          => 'reader',
        reader_pass          => 'N0pT8_y2-f2t0i_P',
        writer_user          => 'writer',
        writer_pass          => '_MKEI_-zgLcQU854',
        mmm_type             => $mmm_type,
      }
    }
  }
}
