class redis::package inherits redis::params {
  package { $redis::params::package: ensure => $redis::params::ensure }
}