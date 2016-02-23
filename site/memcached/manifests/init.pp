class memcached {
package{'memcached':
  ensure  => present,
  before => File['/etc/sysconfig/memcached']
  }
  file {'/etc/sysconfig/memcached':
    ensure => 'file',
    source => 'puppet:///modules/memcached/sysconfig/memcached',
    require => Package['memcached'],
    notify  => Service['memcached'],
    }
    
    service {'memcached':
      ensure => 'running',
      subscribe => File['/etc/sysconfig/memcached'],
      }
}
