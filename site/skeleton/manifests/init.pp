class skeleton{  
 file { '/etc/skel/':    
 ensure => 'directory',
 }  
  
 file { '/etc/skel/.bashrc':    
 ensure  => 'present',    
 group   => 'root',    
 owner   => 'root',  
 source => 'puppet://modules/sites/skeleton/files/bashrc',
 }  
}  
