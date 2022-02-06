# jadys
class jadys {

  file { '/etc/puppetlabs/facter':
    ensure => 'directory',
  }
  -> file { '/etc/puppetlabs/facter/facter.conf':
    ensure => 'file',
    source => 'puppet:///modules/jadys/facter.conf',
  }

}
