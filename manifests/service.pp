class redis::service {

  $ensure = $redis::service_ensure ? {
    'present' => 'running',
    default   => $redis::service_ensure,
  }

  service { $redis::service:
    ensure => $ensure,
  }
}
