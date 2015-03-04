node default {
  package { 'git'
    ensure => installed,
  }
  package { 'vim'
    ensure => installed,
  }
  package { 'emacs'
    ensure => installed,
  }
  package { 'build-essential'
    ensure => installed,
  }
  package { 'llvm'
    ensure => installed,
  }
  package { 'clang'
    ensure => installed,
  }
  package { 'mosh'
    ensure => installed,
  }
  package { 'httpie'
    ensure => installed,
  }
  package { 'curl'
    ensure => installed,
  }
  package { 'zsh'
    ensure => installed,
  }
  package { 'screen'
    ensure => installed,
  }
  package { 'tmux'
    ensure => installed,
  }
}
