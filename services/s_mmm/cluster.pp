# MMM config

define s_mmm::cluster($mmm_type, $clustername) {
  case $clustername {
    'linkorb-m1': {
      # configure the cluster
      mmm::cluster::config { 'linkorb-m1':
        ensure               => 'present',
        localsubnet          => $::localsubnet,
        cluster_interface    => 'eth0:1',
        cluster_name         => 'linkorb-m1',
        port                 => '9989',
        replication_user     => 'repl',
        replication_password => 'PAkHt-_S3_x8q01J',
        agent_user           => 'mmm_agent',
        agent_password       => 'gRtQ-We_W3nrXiFI',
        monitor_user         => 'mmm_monitor',
        monitor_password     => 'N7_kh8A_YME5-H8a',
        monitor_ip           => '127.0.0.1',
        masters              => [['m1a','192.168.193.197','m1b'], ['m1b', '192.168.193.198','m1a']],
        readers              => ['m1a', 'm1b'],
        writer_virtual_ip    => '192.168.193.203',
        reader_virtual_ips   => ['192.168.193.204'],
        reader_user          => 'reader',
        reader_pass          => 'N0pT8_y2-f2t0i_P',
        writer_user          => 'writer',
        writer_pass          => '_MKEI_-zgLcQU854',
        mmm_type             => $mmm_type,
      }
    }

    'linkorb-m2': {
      # configure the cluster
      mmm::cluster::config { 'linkorb-m2':
        ensure               => 'present',
        localsubnet          => $::localsubnet,
        cluster_interface    => 'eth0:1',
        cluster_name         => 'linkorb-m2',
        port                 => '9990',
        replication_user     => 'repl',
        replication_password => 'm7si-06VWaAgA-z_',
        agent_user           => 'mmm_agent',
        agent_password       => 'Qc1LbOn_6LP8-FK4',
        monitor_user         => 'mmm_monitor',
        monitor_password     => 'BgKp8s896-Afq_ac',
        monitor_ip           => '127.0.0.1',
        masters              => [['m2a','192.168.194.233','m2b'], ['m2b', '192.168.194.234','m2a']],
        readers              => ['m2a', 'm2b'],
        writer_virtual_ip    => '192.168.194.237',
        reader_virtual_ips   => ['192.168.194.238'],
        reader_user          => 'reader',
        reader_pass          => 'D-sSvT_31l8iTo9U',
        writer_user          => 'writer',
        writer_pass          => 'fmHmE7zvI2-vHV_z',
        mmm_type             => $mmm_type,
      }
    }

    'linkorb-m3': {
      # configure the cluster
      mmm::cluster::config { 'linkorb-m3':
        ensure               => 'present',
        localsubnet          => $::localsubnet,
        cluster_interface    => 'eth0:1',
        cluster_name         => 'linkorb-m3',
        port                 => '9991',
        replication_user     => 'repl',
        replication_password => 'Str-rr9dnM_adPB',
        agent_user           => 'mmm_agent',
        agent_password       => 'z4k5_8-SkrmcA0Y',
        monitor_user         => 'mmm_monitor',
        monitor_password     => 'EE-k_sVsULR66DP',
        monitor_ip           => '127.0.0.1',
        masters              => [['m3a','192.168.144.122','m3b'], ['m3b', '192.168.144.170','m3a']],
        readers              => ['m3a', 'm3b'],
        writer_virtual_ip    => '192.168.145.10',
        reader_virtual_ips   => ['192.168.157.252'],
        reader_user          => 'reader',
        reader_pass          => 'XmKsPk-dAOe51p_',
        writer_user          => 'writer',
        writer_pass          => '4EC5o-QGfw_ToI6',
        mmm_type             => $mmm_type,
      }
    }

    'linkorb-m4': {
      # configure the cluster
      mmm::cluster::config { 'linkorb-m4':
        ensure               => 'present',
        localsubnet          => $::localsubnet,
        cluster_interface    => 'eth0:1',
        cluster_name         => 'linkorb-m4',
        port                 => '9992',
        replication_user     => 'repl',
        replication_password => 'n-eelb8fGI_RrG3',
        agent_user           => 'mmm_agent',
        agent_password       => 'E5R0YoQIWynB-X_',
        monitor_user         => 'mmm_monitor',
        monitor_password     => '_i6xn_hX3QCmCx-',
        monitor_ip           => '127.0.0.1',
        masters              => [['m4a','192.168.157.50','m4b'], ['m4b', '192.168.186.66','m4a']],
        readers              => ['m4a', 'm4b'],
        writer_virtual_ip    => '192.168.152.172',
        reader_virtual_ips   => ['192.168.152.198'],
        reader_user          => 'reader',
        reader_pass          => 'Oim2SQZduX_ii-3',
        writer_user          => 'writer',
        writer_pass          => '-c1a4nBhTooqk_K',
        mmm_type             => $mmm_type,
      }
    }

    'linkorb-m100': {
      # configure the cluster
      mmm::cluster::config { 'linkorb-m100':
        ensure               => 'present',
        localsubnet          => $::localsubnet,
        cluster_interface    => 'eth0:1',
        cluster_name         => 'linkorb-m100',
        port                 => '9993',
        replication_user     => 'repl',
        replication_password => '2Xjy7_-PluGY',
        agent_user           => 'mmm_agent',
        agent_password       => 'BX-L-N-os8g_',
        monitor_user         => 'mmm_monitor',
        monitor_password     => 'Py-_Pcx_-z3y',
        monitor_ip           => '127.0.0.1',
        masters              => [['m100a','192.168.157.225','m100b'], ['m100b', '192.168.176.106','m100a']],
        readers              => ['m100a', 'm100b'],
        writer_virtual_ip    => '192.168.163.8',
        reader_virtual_ips   => ['192.168.163.182'],
        reader_user          => 'reader',
        reader_pass          => '8W-_pXD-8H55',
        writer_user          => 'writer',
        writer_pass          => 'T71O6jm__CH-',
        mmm_type             => $mmm_type,
      }
    }
  }
}
