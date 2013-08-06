class redis inherits redis::params {
  anchor { 'redis::start': } ->
  class { 'redis::package': } ->
  class { 'redis::config': } ->
  class { 'redis::service': } ->
  anchor { 'redis::end': }
}