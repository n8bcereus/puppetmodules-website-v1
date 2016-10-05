class loadbalancer {
	exec { 'apt-update':
		command => '/usr/bin/apt-get update'
	}
	package { 'pound':
		require => Exec['apt-update'],
		ensure => installed,
	}
	service { 'pound':
		ensure => running,
	}
}
