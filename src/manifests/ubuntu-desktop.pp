node default {
  class { 'apt':
    always_apt_update => true
  }
  apt::ppa { 'ppa:webupd8team/java': }
  package { 'ack-grep':
    ensure => latest
  }
  package { 'atop':
    ensure => latest
  }
  package { 'bastet':
    ensure => latest
  }
  package { 'binclock':
    ensure => latest
  }
  package { 'boxes':
    ensure => latest
  }
  package { 'bsdgames':
    ensure => latest
  }
  package { 'build-essential':
    ensure => latest
  }
  package { 'byobu':
    ensure => latest
  }
  package { 'bzr':
    ensure => latest
  }
  package { 'bzr-git':
    ensure => latest
  }
  package { 'clang':
    ensure => latest
  }
  package { 'cowsay':
    ensure => latest
  }
  package { 'chromium-browser':
    ensure => latest
  }
  package { 'curl':
    ensure => latest
  }
  package { 'elinks':
    ensure => latest
  }
  package { 'emacs':
    ensure => latest
  }
  package { 'figlet':
    ensure => latest
  }
  package { 'fortune':
    ensure => latest
  }
  package { 'gcc':
    ensure => latest
  }
  package { 'git':
    ensure => latest
  }
  package { 'git-bzr':
    ensure => latest
  }
  package { 'git-svn':
    ensure => latest
  }
  package { 'gradle':
    ensure => latest
  }
  package { 'greed':
    ensure => latest
  }
  package { 'htop':
    ensure => latest
  }
  package { 'httpie':
    ensure => latest
  }
  package { 'links':
    ensure => latest
  }
  package { 'links2':
    ensure => latest
  }
  package { 'llvm':
    ensure => latest
  }
  package { 'mercurial':
    ensure => latest
  }
  package { 'mercurial-git':
    ensure => latest
  }
  package { 'moon-buggy':
    ensure => latest
  }
  package { 'mosh':
    ensure => latest
  }
  package { 'nethack-console':
    ensure => latest
  }
  package { 'ninvaders':
    ensure => latest
  }
  package { 'oracle-java6-installer':
    ensure => latest,
    require => Apt::Ppa['ppa:webupd8team/java']
  }
  package { 'oracle-java7-installer':
    ensure => latest,
    require => Apt::Ppa['ppa:webupd8team/java']
  }
  package { 'oracle-java8-installer':
    ensure => latest,
    require => Apt::Ppa['ppa:webupd8team/java']
  }
  package { 'oracle-java9-installer':
    ensure => latest,
    require => Apt::Ppa['ppa:webupd8team/java']
  }
  package { 'qemu':
    ensure => latest
  }
  package { 'qemu-kvm':
    ensure => latest
  }
  package { 'screen':
    ensure => latest
  }
  package { 'silversearcher-ag':
    ensure => latest
  }
  package { 'sl':
    ensure => latest
  }
  package { 'squid3':
    ensure => latest
  }
  package { 'subversion':
    ensure => latest
  }
  package { 'sudo':
    ensure => latest
  }
  package { 'toilet':
    ensure => latest
  }
  package { 'tmux':
    ensure => latest
  }
  package { 'ubuntu-desktop':
    ensure => latest
  }
  package { 'vagrant':
    ensure => latest
  }
  package { 'vim':
    ensure => latest
  }
  package { 'wget':
    ensure => latest
  }
  package { 'zsh':
    ensure => latest
  }
  file_line { 'accept_java6_license':
    path => '/usr/bin/debconf-set-selections',
    line => 'oracle-java6-installer shared/accepted-oracle-license-v1-1 select true'
  }
  file_line { 'seen_java6_license':
    path => '/usr/bin/debconf-set-selections',
    line => 'oracle-java6-installer shared/accepted-oracle-license-v1-1 seen true'
  }
  file_line { 'accept_java7_license':
    path => '/usr/bin/debconf-set-selections',
    line => 'oracle-java7-installer shared/accepted-oracle-license-v1-1 select true'
  }
  file_line { 'seen_java7_license':
    path => '/usr/bin/debconf-set-selections',
    line => 'oracle-java7-installer shared/accepted-oracle-license-v1-1 seen true'
  }
  file_line { 'accept_java8_license':
    path => '/usr/bin/debconf-set-selections',
    line => 'oracle-java8-installer shared/accepted-oracle-license-v1-1 select true'
  }
  file_line { 'seen_java8_license':
    path => '/usr/bin/debconf-set-selections',
    line => 'oracle-java8-installer shared/accepted-oracle-license-v1-1 seen true'
  }
  file_line { 'accept_java9_license':
    path => '/usr/bin/debconf-set-selections',
    line => 'oracle-java9-installer shared/accepted-oracle-license-v1-1 select true'
  }
  file_line { 'seen_java9_license':
    path => '/usr/bin/debconf-set-selections',
    line => 'oracle-java9-installer shared/accepted-oracle-license-v1-1 seen true'
  }
}
