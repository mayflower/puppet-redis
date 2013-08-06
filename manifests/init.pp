class redis (
  # package
  $package        = $redis::params::package,
  $package_ensure = $redis::params::ensure,

  # config
  $target         = $redis::params::config,
  $config_hash    = $redis::params::config_hash,  # used in template

  # service
  $service        = $redis::params::service,
  $service_ensure = $redis::params::ensure,
) inherits redis::params {
  anchor { 'redis::start': }    ->
    class { 'redis::package': } ->
    class { 'redis::config': }  ->
    class { 'redis::service': } ->
  anchor { 'redis::end': }
}
