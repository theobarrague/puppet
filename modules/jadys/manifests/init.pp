# jadys
class jadys {

  file { '/etc/puppetlabs/facter/facter.conf':
    ensure => 'file',
    source => 'puppet:///modules/jadys/facter.conf',
  }

  file { '/etc/puppetlabs/puppet/puppet.conf':
    ensure => 'file',
    source => 'puppet:///modules/jadys/puppet.conf',
  }

}
