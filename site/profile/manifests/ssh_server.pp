class profile::ssh_server {
  package {'openssh-server': 
      ensure => present,
    }
  service {'sshd':
    ensure => running,
    enable => true,   
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa'.
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDSZiPvSLT/lqWGEmd326GECR6fMnL9qQjrgHMvSN/4l/bFZ0VQ/kA64dW8mVOT9j+5XUEju5Sg1YjtqbKJwwTOjr5vgM5Sv3ROv9i20IIrYA7zcIoGmGKTertNM8k94+ErvXm+sF3+tKjNjIh8QZNtry6AwRRRMExgABSghP5roQ58o3Wt041pr4ow1KwvQQlnsQqmjcUaXieXpf/U5XdobsnXNkFhaDNay7dCTq2al+u6x6b5+3KPNaxUx7T12QIQGmCKXyFBVrgPCxAW6LuX9YpRxJvMEPx6Gt/HQ9TtPjX3cswBboFP1l7xrYvcZLjEfW8BRqDfREnq+Zx98AKn',
  }
}
