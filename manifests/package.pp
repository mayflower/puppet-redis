class redis::package {
  package { $redis::package:
    ensure => $redis::package_ensure,
  }
}
