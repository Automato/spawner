node default {
  package { 'git':
    ensure => latest
  }
  package { 'vim':
    ensure => latest
  }
  package { 'emacs':
    ensure => latest
  }
  package { 'build-essential':
    ensure => latest
  }
  package { 'llvm':
    ensure => latest
  }
  package { 'clang':
    ensure => latest
  }
  package { 'mosh':
    ensure => latest
  }
  package { 'httpie':
    ensure => latest
  }
  package { 'curl':
    ensure => latest
  }
  package { 'zsh':
    ensure => latest
  }
  package { 'screen':
    ensure => latest
  }
  package { 'tmux':
    ensure => latest
  }
  package { 'wget':
    ensure => latest
  }
  package { 'sudo':
    ensure => latest
  }
}
