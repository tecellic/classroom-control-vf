class tecelli (
  $server      = true,  # Enable the server
  $client      = true,  # Enable the client
  $allow_root  = true,  # permit root to log in
  $untrusted   = false, # permit untrusted hosts to log in
  $x11_forward = false, # forward X11 protocol; run remote graphical apps
) {
  File {
    owner => root,
    group => root,
    mode  => '0440',
  }
  include ssh::hostkeys  # set up keys for trusted hosts

  if $server {
    include ssh::server  # manage server
    file { '/etc/ssh/sshd_config':
      ensure  => file,
      content => template('ssh/sshd_config.erb'),
    }
  }
  if $client {
    include ssh::client  # manage client
    file { '/etc/ssh/ssh_config':
      ensure  => file,
      content => template('ssh/ssh_config.erb'),
    }
  }
}
