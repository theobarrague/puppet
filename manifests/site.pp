# site.pp
node 'puppet-1.jadys.agency' {
  include role::puppet
}

node 'router-1.jadys.agency' {
  include role::router
}
