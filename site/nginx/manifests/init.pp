class nginx {

$Package='nginx'

File{
    owner  => '0',
    mode   => '0644',
    group  => '0',
    }

  file { '/etc/nginx/nginx.conf':
  ensure => 'file',
  source => 'puppet:///modules/nginx/nginx.conf',
  require => Package['nginx'],
}

package {$Package:
  ensure => present,}

file { '/var/www':
  ensure => 'directory',
}
file { '/etc/nginx/default.conf':
  ensure => 'file',
  source => 'puppet:///modules/nginx/default.conf',
  require => Package[$Package],
}

file { '/var/www/index.html':
  ensure => 'file',
  source => 'puppet:///modules/nginx/index.html',
  require => Package[$Package],
}

service {$Package:
  ensure => 'running',
  enable => 'false',
  require => [
              File['/etc/nginx/default.conf'],
              File['/etc/nginx/nginx.conf'],
              ]
              }
  
}
