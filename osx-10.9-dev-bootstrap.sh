#!/bin/bash

# Set up some graceful failure and logging
## Fail if a command fails or unknown variable is referenced
set -eu
## Fail a whole line preemptively if a command fails and pipes output to another command
set -o pipefail
## Beautify and push debug output to system log
export PS4='+ ${FUNCNAME[0]:+${FUNCNAME[0]}():}line ${LINENO}: '
syslogname="$(basename "$0")[$$]"
exec 3<> >(logger -t "$syslogname")
BASH_XTRACEFD=3
echo "Tracing to syslog as $syslogname"
unset syslogname
debug() { echo "$@" >&3 }
## Log all executed statements, after expansion
set -x

softwareupdate -i -a
xcode-select --install
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew install saltstack
read -p "Enter salt master-server address: " address
echo "master: $address" > /etc/salt/minion
