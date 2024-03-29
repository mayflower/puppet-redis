class redis::params {
  case $::operatingsystem {
    'ubuntu','debian': {
      $ensure       = 'present'
      $package      = 'redis-server'
      $service      = 'redis-server'
      $config       = '/etc/redis/redis.conf'

      $config_hash  = {
        'daemonize'   => 'yes',
        'pidfile'     => '/var/run/redis/redis-server.pid',
        'port'        => '6379',
        'bind'        => '127.0.0.1',
        'timeout'     => '300',
        'loglevel'    => 'notice',
        'logfile'     => '/var/log/redis/redis-server.log',
        'databases'   => '16',
        'save'           => [ '900 1', '300 10', '60 10000' ],
        'rdbcompression' => 'yes',
        'dbfilename'     => 'dump.rdb',
        'dir'            => '/var/lib/redis',
        'slave-serve-stale-data'    => 'yes',
        'appendonly'                => 'no',
        'appendfsync'               => 'everysec',
        'no-appendfsync-on-rewrite' => 'no',
        'vm-enabled'                => 'no',
        'vm-swap-file'              => '/var/lib/redis/redis.swap',
        'vm-max-memory'             => '0',
        'vm-page-size'              => '32',
        'vm-pages'                  => '134217728',
        'vm-max-threads'            => '4',
        'hash-max-zipmap-entries'   => '512',
        'hash-max-zipmap-value'     => '64',
        'list-max-ziplist-entries'  => '512',
        'list-max-ziplist-value'    => '64',
        'set-max-intset-entries'    => '512',
        'activerehashing'           => 'yes'
      }
    }

    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}