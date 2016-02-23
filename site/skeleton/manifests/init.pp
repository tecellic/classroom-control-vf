class skeleton{  
 file { '/etc/skel/':    
 ensure => 'directory',
 }  
  
 file { '/etc/skel/.bashrc':    
 ensure  => 'file',    
 group   => '0',    
 mode    => '0644',    
 owner   => '0',  
 source => 'puppet:///site/skeleton/files/bashrc',
 type    => 'file',
 }  
}  
