# profile::puppet
class profile::puppet {

  class { 'puppetdb':
    report_ttl => '7d',
  }

  class { 'puppetdb::master::config':
    manage_report_processor => true,
    enable_reports          => true,
  }

}
