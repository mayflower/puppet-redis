class redis::config (
  $target       = $redis::params::config,
  $config_hash  = $redis::params::config_hash
) inherits redis::params {
  file { $target:
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('redis/redis.conf.erb')
  }
}
