class skeleton{  
 file { '/etc/skel/':    
 ensure => 'directory',
 }  
  
 file { '/etc/skel/.bashrc':    
 ensure  => 'file',    
 group   => 'root',    
 owner   => 'root',  
 source => 'puppet:///skeleton/files/bashrc',
 }  
}  
