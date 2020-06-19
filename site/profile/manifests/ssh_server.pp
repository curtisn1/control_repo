class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@ip-192-168-0-247.eu-north-1.compute.internal':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => '',
	}  
}
