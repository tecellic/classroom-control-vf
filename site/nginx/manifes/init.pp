class nginx {
  file { '/etc/nginx/nginx.conf':
  ensure => 'present',
  #ctime  => '2016-02-22 15:11:18 +0000',
  group  => '0',
  mode   => '0755',
  #mtime  => '2015-06-18 12:39:33 +0000',
  owner  => '0',
  source => 'puppet:///modules/nginx/nginx.conf',
  require => Package['nginx'],
}

package {'nginx':
  ensure => present,}

file { '/var/www':
  ensure => 'directory',
}
file { '/etc/nginx/default.conf':
  ensure => 'present',
  #ctime  => '2016-02-22 15:11:18 +0000',
  group  => '0',
  mode   => '0755',
  #mtime  => '2015-06-18 12:39:33 +0000',
  owner  => '0',
  source => 'puppet:///modules/nginx/default.conf',
  require => Package['nginx'],
}

service {'nginx':
  ensure => 'running',
  enable => 'false',
  require => [
              File['/etc/nginx/default.conf'],
              File['/etc/nginx/nginx.conf'],
              ]
              }
  
}
