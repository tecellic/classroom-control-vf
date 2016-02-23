class skeleton{  
 file { '/etc/skel/':    
 ensure => 'directory',
 }  
  
 file { '/etc/skel/.bashrc':    
 ensure  => 'file',    
 group   => 'root',    
 mode    => '644',    
 owner   => 'root',  
 source => 'puppet:///skeleton/files/bashrc',
 type    => 'file',
 }  
}  
