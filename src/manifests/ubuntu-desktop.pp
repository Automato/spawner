node default {
  class { 'apt':
    always_apt_update => true
  }
  apt::ppa { 'ppa:hansjorg/rust': }
  apt::ppa { 'ppa:webupd8team/java': }
  apt::ppa { 'ppa:paolorotolo/android-studio': }
  apt::source { 'docker':
    location          => 'https://get.docker.com/ubuntu',
    release           => 'docker',
    repos             => 'main',
    required_packages => 'apt-transport-https debian-keyring debian-archive-keyring',
    key               => '36A1D7869245C8950F966E92D8576A8BA88D21E9',
    include_deb       => true,
    include_src       => false
  }
  apt::source { 'erlang-solutions':
    location          => 'http://packages.erlang-solutions.com/ubuntu',
    release           => 'trusty',
    repos             => 'contrib',
    required_packages => 'debian-keyring debian-archive-keyring',
    key               => '434975BD900CCBE4F7EE1B1ED208507CA14F4FCA',
    include_deb       => true,
    include_src       => false
  }
  package { 'ack-grep':
    ensure => latest
  }
  package { 'ant':
    ensure => latest
  }
  package { 'atop':
    ensure => latest
  }
  package { 'autoconf':
    ensure => latest
  }
  package { 'automake':
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
  package { 'cmake':
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
  package { 'gdb':
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
  package { 'gyp':
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
  package { 'lldb-3.5':
    ensure => latest
  }
  package { 'llvm':
    ensure => latest
  }
  package { 'lua5.2':
    ensure => latest
  }
  package { 'lxc':
    ensure => latest
  }
  package { 'lxc-docker':
    ensure  => latest,
    require => Apt::Source['docker']
  }
  package { 'make':
    ensure => latest
  }
  package { 'maven':
    ensure => latest
  }
  package { 'maven2':
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
  package { 'ninja-build':
    ensure => latest
  }
  package { 'octave': 
    ensure => latest
  }
  package { 'oracle-java6-installer':
    ensure  => latest,
    require => [
      Apt::Ppa['ppa:webupd8team/java'],
      Exec['accept_java6_license'],
      Exec['seen_java6_license']
    ]
  }
  package { 'oracle-java7-installer':
    ensure  => latest,
    require => [
      Apt::Ppa['ppa:webupd8team/java'],
      Exec['accept_java7_license'],
      Exec['seen_java7_license']
    ]
  }
  package { 'oracle-java8-installer':
    ensure  => latest,
    require => [
      Apt::Ppa['ppa:webupd8team/java'],
      Exec['accept_java8_license'],
      Exec['seen_java8_license']
    ]
  }
  package { 'python-virtualenv':
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
  package { 'qconf':
    ensure => latest
  }
  package { 'qt5-qmake':
    ensure => latest
  }
  package { 'r-base':
    ensure => latest
  }
  package { 'radare2':
    ensure => latest
  }
  package { 'rust-nightly':
    ensure  => latest,
    require => Apt::Ppa['ppa:hansjorg/rust']
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
  package { 'virtualenvwrapper':
    ensure => latest
  }
  package { 'wget':
    ensure => latest
  }
  package { 'zsh':
    ensure => latest
  }
  exec { 'accept_java6_license':
    command => '/bin/echo oracle-java6-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections'
  }
  exec { 'seen_java6_license':
    command => '/bin/echo oracle-java6-installer shared/accepted-oracle-license-v1-1 seen true | /usr/bin/debconf-set-selections'
  }
  exec { 'accept_java7_license':
    command => '/bin/echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections'
  }
  exec { 'seen_java7_license':
    command => '/bin/echo oracle-java7-installer shared/accepted-oracle-license-v1-1 seen true | /usr/bin/debconf-set-selections'
  }
  exec { 'accept_java8_license':
    command => '/bin/echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections'
  }
  exec { 'seen_java8_license':
    command => '/bin/echo oracle-java8-installer shared/accepted-oracle-license-v1-1 seen true | /usr/bin/debconf-set-selections'
  }
}
