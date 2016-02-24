class user::admins { 
 
 
 $admins=['admin', 'administrator', 'wheel'] 
 users::managed_users { $admins: 5                
 } 
 
 
                   } 
