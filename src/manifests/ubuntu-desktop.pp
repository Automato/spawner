node default {
  class { 'apt':
    always_apt_update => true
  }
  apt::ppa { 'ppa:hansjorg/rust': 
    require => Package['python-software-properties']
  }
  apt::ppa { 'ppa:webupd8team/java':
    require => Package['python-software-properties']
  }
  apt::ppa { 'ppa:webupd8team/sublime-text-3':
    require => Package['python-software-properties']
  }
  apt::source { 'docker':
    location          => 'https://get.docker.com/ubuntu',
    release           => 'docker',
    repos             => 'main',
    required_packages => 'apt-transport-https debian-keyring debian-archive-keyring',
    key               => '36A1D7869245C8950F966E92D8576A8BA88D21E9',
    include_deb       => true,
    include_src       => false
  }
  case $::operatingsystemrelease {
    '14.04': {
      apt::source { 'erlang-solutions':
        location          => 'http://packages.erlang-solutions.com/ubuntu',
        release           => 'trusty',
        repos             => 'contrib',
        required_packages => 'debian-keyring debian-archive-keyring',
        key               => '434975BD900CCBE4F7EE1B1ED208507CA14F4FCA',
        include_deb       => true,
        include_src       => false
      }
    }
    '14.10': {
      apt::source { 'erlang-solutions':
        location          => 'http://packages.erlang-solutions.com/ubuntu',
        release           => 'utopic',
        repos             => 'contrib',
        required_packages => 'debian-keyring debian-archive-keyring',
        key               => '434975BD900CCBE4F7EE1B1ED208507CA14F4FCA',
        include_deb       => true,
        include_src       => false
      }
    }
    '7': {
      apt::source { 'erlang-solutions':
        location          => 'http://packages.erlang-solutions.com/debian',
        release           => 'wheezy',
        repos             => 'contrib',
        required_packages => 'debian-keyring debian-archive-keyring',
        key               => '434975BD900CCBE4F7EE1B1ED208507CA14F4FCA',
        include_deb       => true,
        include_src       => false
      }
    }
    '8': {
      apt::source { 'erlang-solutions':
        location          => 'http://packages.erlang-solutions.com/debian',
        release           => 'jessie',
        repos             => 'contrib',
        required_packages => 'debian-keyring debian-archive-keyring',
        key               => '434975BD900CCBE4F7EE1B1ED208507CA14F4FCA',
        include_deb       => true,
        include_src       => false
      }
    }
    default: {
      fail("Unsupported operatingsystemrelease: ${::operatingsystemrelease}")
    }
  }
  package { 'ack-grep':
    ensure => latest
  }
  package { 'ant':
    ensure => latest
  }
  package { 'aria2':
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
  package { 'calcurse':
    ensure => latest
  }
  package { 'cgdb':
    ensure => latest
  }
  package { 'clang':
    ensure => latest
  }
  package { 'cloc':
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
  package { 'dict':
    ensure => latest
  }
  package { 'dstat':
    ensure => latest
  }
  package { 'dtach':
    ensure => latest
  }
  package { 'duplicity':
    ensure => latest
  }
  package { 'elinks':
    ensure => latest
  }
  package { 'emacs':
    ensure => latest
  }
  package { 'erlang':
    ensure => latest,
    require => Apt::Source['erlang-solutions']
  }
  package { 'elixir':
    ensure  => latest,
    require => Apt::Source['erlang-solutions']
  }
  package { 'figlet':
    ensure => latest
  }
  package { 'findutils':
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
  package { 'gist':
    ensure => latest
  }
  package { 'git':
    ensure => latest
  }
  package { 'git-bzr':
    ensure => latest
  }
  package { 'git-gui':
    ensure => latest
  }
  package { 'git-svn':
    ensure => latest
  }
  package { 'gitg':
    ensure => latest
  }
  package { 'gitk':
    ensure => latest
  }
  package { 'glances':
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
  package { 'iftop':
    ensure => latest
  }
  package { 'ipcalc':
    ensure => latest
  }
  package { 'iptraf':
    ensure => latest
  }
  package { 'iptraf-ng':
    ensure => latest
  }
  package { 'irssi':
    ensure => latest
  }
  package { 'jq':
    ensure => latest
  }
  # jEnv
  package { 'ledger':
    ensure => latest
  }
  package { 'less':
    ensure => latest
  }
  # lieningen
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
  package { 'mc':
    ensure => latest
  }
  package { 'mdm':
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
  package { 'most':
    ensure => latest
  }
  package { 'mtr':
    ensure => latest
  }
  package { 'multitail':
    ensure => latest
  }
  package { 'nethack-console':
    ensure => latest
  }
  package { 'nethogs':
    ensure => latest
  }
  package { 'netpipes':
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
  package { 'oracle-java8-set-default':
    ensure  => latest,
    require => Package['oracle-java8-installer']
  }
  package { 'parallel':
    ensure => latest
  }
  package { 'python-software-properties':
    ensure => latest
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
  package { 'qalc':
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
  package { 'ranger':
    ensure => latest
  }
  package { 'rbenv':
    ensure => latest
  }
  package { 'remind':
    ensure => latest
  }
  package { 'rsync':
    ensure => latest
  }
  package { 'rsyncrypto':
    ensure => latest
  }
  package { 'rtorrent':
    ensure => latest
  }
  package { 'ruby':
    ensure => latest
  }
  package { 'rust-nightly':
    ensure  => latest,
    require => Apt::Ppa['ppa:hansjorg/rust']
  }
  package { 'screen':
    ensure => latest
  }
  package { 'siege':
    ensure => latest
  }
  package { 'silversearcher-ag':
    ensure => latest
  }
  package { 'sl':
    ensure => latest
  }
  package { 'slashem':
    ensure => latest
  }
  package { 'socat':
    ensure => latest
  }
  package { 'squid3':
    ensure => latest
  }
  package { 'steghide':
    ensure => latest
  }
  package { 'stegsnow':
    ensure => latest
  }
  package { 'sublime-text-installer':
    ensure  => latest,
    require => Apt::Ppa['ppa:webupd8team/sublime-text-3']
  }
  package { 'subversion':
    ensure => latest
  }
  package { 'sudo':
    ensure => latest
  }
  package { 'sysstat':
    ensure => latest
  }
  package { 'task':
    ensure => latest
  }
  package { 'tig':
    ensure => latest
  }
  package { 'toilet':
    ensure => latest
  }
  package { 'tpp':
    ensure => latest
  }
  package { 'tmux':
    ensure => latest
  }
  package { 'tsung':
    ensure => latest
  }
  package { 'ttyrec':
    ensure => latest
  }
  package { 'ubuntu-desktop':
    ensure => latest
  }
  package { 'vagrant':
    ensure => latest
  }
  package { 'vifm':
    ensure => latest
  }
  package { 'vim':
    ensure => latest
  }
  package { 'virtualenvwrapper':
    ensure => latest
  }
  package { 'weechat':
    ensure => latest
  }
  package { 'wget':
    ensure => latest
  }
  package { 'wyrd':
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
  
  # Begin IntelliJ Install
  ## Make Opt Folder
  file { '/opt':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '755'
  }
  ## Download and unpack IntelliJ ultimate
  exec { 'download idea-ultimate':
    command => 'curl -L https://download.jetbrains.com/idea/ideaIU-14.1.1.tar.gz | tar xzC /opt'
  }
  ##TODO: Create desktop entry for idea
  ##TODO: handle versions more gracefully
  ## create symlink to idea.sh
  file { '/usr/local/bin/idea-ultimate.sh':
    ensure  => link,
    target  => '/opt/idea-IU-141.178.9/bin/idea.sh',
    require => Exec['download idea-ultimate']
  }
  ## create symlink to idea.png
  file { '/usr/share/pixmaps/idea.png':
    ensure  => link,
    target  => '/opt/idea-IU-141.178.9/bin/idea.png',
    require => Exec['downlaod idea-ultimate']
  # Done with Intellij Install
}
