define users::managed_user(
$user = $title,
$group = $title,
)

{

user { $user:
ensure => present,
managedhome => 'false',
     }
     
file { "/home/$user":
ensure => directory,
rquire => User[$user]
     }
     
}

