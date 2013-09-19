class s_master::hiera {
    File {
        owner => 'puppet',
        group => 'puppet',
        mode  => '0644',
    }

    file { '/etc/puppet/hiera.yaml':
        ensure => file,
        source => 'puppet:///modules/s_master/hiera.yaml',
    }

    file { '/etc/puppet/hieradata':
        ensure => directory,
        mode   => '0755',
    }

    file { '/etc/puppet/hieradata/common.yaml':
        ensure => file,
        source => 'puppet:///modules/s_master/hieradata/common.yaml',
    }

    # node specific
    file { '/etc/puppet/hieradata/monitor.lan.yaml':
        ensure => file,
        source => 'puppet:///modules/s_master/hieradata/monitor.lan.yaml',
    }

    file { '/etc/puppet/hieradata/agent1.lan.yaml':
        ensure => file,
        source => 'puppet:///modules/s_master/hieradata/agent1.lan.yaml',
    }

    file { '/etc/puppet/hieradata/agent2.lan.yaml':
        ensure => file,
        source => 'puppet:///modules/s_master/hieradata/agent2.lan.yaml',
    }
}
