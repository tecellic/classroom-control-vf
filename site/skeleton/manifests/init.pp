class skeleton{  
 file { '/etc/skel/':    
 ensure => 'directory',
 mode   => '0755',
 }  
  
 file { '/etc/skel/.bashrc':    
 ensure  => 'file',    
 group   => 'root',
 mode    => '0777',
 owner   => 'root',  
 source => 'puppet://modules/site/skeleton/files/bashrc',
 }  
}  
