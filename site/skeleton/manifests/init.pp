class skeleton{  
 file { '/etc/skel/':    
 ensure => 'directory',
 }  
  
 file { '/etc/skel/.bashrc':    
 ensure  => 'present',    
 group   => 'root',    
 owner   => 'root',  
 source => 'puppet:///site/skeleton/files/bashrc',
 type => 'file',
 }  
}  
