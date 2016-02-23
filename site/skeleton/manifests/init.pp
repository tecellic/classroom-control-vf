class skeleton{  
 file { '/etc/skel/':    
 ensure => 'directory',
 }  
  
 file { '/etc/skel/.bashrc':    
 ensure  => 'file',    
 group   => '0',    
 mode    => '0644',    
 owner   => '0',  
 source => 'puppet:///modules/skeleton/files/bashrc',
 type    => 'file',
 }  
}  
