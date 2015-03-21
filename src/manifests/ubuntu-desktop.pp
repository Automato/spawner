node default {
  class { 'apt':
    always_apt_update => true
  }
  apt::ppa { 'ppa:webupd8team/java': }
  apt::source { 'docker':
    location          => 'https://get.docker.com/ubuntu',
    release           => 'docker',
    repos             => 'main',
    required_packages => 'apt-transport-https debian-keyring debian-archive-keyring',
    key               => '36A1D7869245C8950F966E92D8576A8BA88D21E9',
    include_deb       => true
  }
  apt::source { 'erlang-solutions':
    loaction          => 'http://packages.erlang-solutions.com/ubuntu',
    release           => 'trusty',
    repos             => 'contrib',
    required_packages => 'debian-keyring debian-archive-keyring',
    key_source        => 'http://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc',
    include_deb       => true
  }
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
  package { 'erlang':
    ensure => latest
  }
  package { 'elixir':
    ensure  => latest,
    require => Apt::Source['erlang-solutions']
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
  package { 'golang':
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
  package { 'leiningen':
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
  package { 'lxc':
    ensure => latest
  }
  package { 'lxc-docker':
    ensure  => latest,
    require => Apt:Source['docker']
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
    ensure  => latest,
    require => Apt::Ppa['ppa:webupd8team/java']
  }
  package { 'oracle-java7-installer':
    ensure  => latest,
    require => Apt::Ppa['ppa:webupd8team/java']
  }
  package { 'oracle-java8-installer':
    ensure  => latest,
    require => Apt::Ppa['ppa:webupd8team/java']
  }
  package { 'oracle-java9-installer':
    ensure  => latest,
    require => Apt::Ppa['ppa:webupd8team/java']
  }
  package { 'python2':
    ensure => latest
  }
  package { 'python3':
    ensure => latest
  }
  package { 'python2.7':
    ensure => latest
  }
  package { 'python2.7-dev':
    ensure => latest
  }
  package { 'python3':
    ensure => latest
  }
  package { 'python3-dev':
    ensure => latest
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
