class redis::config {
  file { $lsh::target:
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('redis/redis.conf.erb')
  }
}
