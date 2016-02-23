class skeleton{  
 file { '/etc/skel/':    
 ensure => 'directory',    
 group  => '0',    
 mode   => '0755',    
 owner  => '0',    
 type   => 'directory',
 }  
  
 file { '/etc/skel/.bashrc':    
 ensure  => 'file',    
 group   => '0',    
 mode    => '0644',    
 owner   => '0',  
 source => 'tecellic.puppetlabs.vm:///site/skeleton/manifest/bashrc',
 type    => 'file',
 }  
}  
