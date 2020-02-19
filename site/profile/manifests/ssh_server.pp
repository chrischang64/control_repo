class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDVTiBzjS7Uu0QrbFtcGy4dC9l6zPN7LQU0GSFGxkEMbflnvJJLaStI/nr3jhK9RC9SxVENEydkfXrol/u70wjg7ps6JsjoWw6lJOVttrzXCUxtjNg+JxpuIG0vqNc3+z1qVhfKjUb8hEkDn988VwJrP4Zsq25ZT7Ga7eJm+EbEPCBOlvwWY3nCs0jr0AgaRBXFrdc1H+KoCfqvbxeG4rPsQojuDNSVOVEZ9sSR34B4gi05+mqK6n63YM4nCE/LNJoaRqOvXEDR/GMc6S3Qm+NMVmBzCLBpGcCE3K2Cjk0ow+dfg99vHsbAj1P0y7xZrfUmlNa/LyhzkskgE5pF/jx9',
  }  
}
