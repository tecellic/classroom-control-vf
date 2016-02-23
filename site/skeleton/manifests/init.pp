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
 
  file { '/etc/skel/.bash_profile':    
 ensure  => 'file',    
 group   => 'root',
 mode    => '0644',
 owner   => 'root',  
 source => 'puppet:///modules/skeleton/bash_profile',
 }  
}  
