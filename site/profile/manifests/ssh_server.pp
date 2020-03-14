at ssh_server.pp
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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDarjWY03zj+08U4IxTp+ZE3Dqc5H6YX/qcgzIG6YSP5snGL3YwBOYdTybIPMGp44zea+dvVw8sT3TbuuKmK67nGcZF48v3neKFFjNIZAlksfoEwqHwmgx0w/xvgr5gF+XMEFLySxDEt9WeWQHfOokWtOOjPnrt9Oo2mr/5zF1qWasJ5il6ZSCPhKK4oRLBk7thMXJC51lRcJRKAMIiB1D0knMaRryJ24AYnnf+fULYzUY1IRpjTqEZvBg3dw0yM81f6zVRwPa15KdspJLKa51Ti/h97mJ0tGj7T5KKy7l4rvDq5ln5S7vPggewFItrZEViaOkL7hnYJUT8y1NvNxTN',
  }
}
