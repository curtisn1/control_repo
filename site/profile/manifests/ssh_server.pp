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
		key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDDGO7t2O5MaYz7hl3ICKU5T/pZ7YYQusHmpxmno62NMX7D0aSoBlWWUpZ/Jxdi/00QKZszwCYgWeQwZSzlcoZH8k6xCRhHA9Bv33uQJO650+miEQzm2EN5yixxPJ7WaYkz42el4A3vVL+DpGJ9BYuEglUbVb+3WaJP1joLO6b3lwmsUJ2L8YvZMLvQ0eXGVg2XKxBrFVZTD3nJWSnRNIrub99KEsNLB4ePlXNTpzN3TAcBer4BXd1gSHW/GzM3o91wILVOtGIlTllc7wv4w6Lrs9wWrycubQ2fEU7Hwk8i53ZuhncAVLaMXn2YvbdyRQgAEYuDg1uu0i6jwb4+f3G',
	}  
}
