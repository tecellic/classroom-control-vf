class skeleton{  
 file { '/etc/skel/':    
 ensure => 'directory',
 mode   => '0755',
 }  
  
 file { '/etc/skel/.bashrc':    
 ensure  => 'file',    
 group   => 'root',
 mode    => '0644',
 owner   => 'root',  
 source => 'puppet:///modules/skeleton/bashrc',
 }  
}  
