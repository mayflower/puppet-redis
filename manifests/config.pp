class redis::config {
  file { $redis::config:
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('redis/redis.conf.erb')
  }
}
