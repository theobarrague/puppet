# profile::router
class profile::router {

  resources { 'firewall':
    purge => true,
  }   

  class { 'firewall': }

  lookup('firewall::rules', undef, undef, []).each |$key, $value| {
    firewall { $key:
      * => $value,
    }
  }

}
