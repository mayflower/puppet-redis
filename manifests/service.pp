class redis::service inherits redis::params {
  service { $redis::Params::service:
    ensure => $redis::params::ensure ? {
      'present' => 'running',
      default   => $redis::params::ensure
    }
  }
}