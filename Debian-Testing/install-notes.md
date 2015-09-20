## select language
- English

## select location
- United States

## Configure keyboard
- American english

## Configure the network
- Set hostname (this varies from computer to computer)
- Set domain name

## Set users and passwords
- Set root password. (Set to empty and it enables sudo on primary account)
- Set primary account, full name -> "vagrant"
- "", user name -> "vagrant"
- "", password -> "vagrant"
- "", confirm password -> "vagrant"

## Select time zone
- Eastern (consider UTC)

## Partition disks
- expert mode... kinda weird here
- gpt!!!
- set passphrase for encrypted volume (I used "vagrant". I plan on replacing this with a keyfile in boot)
- setup swap

##  Configure package manager
- Select locale -> United states (consider changing this value to use debian.net mirrors)
- Select mirror -> ftp.debian.org
- Proxy -> `http://[[user][:pass]@][host][:port]` (consider implications of injecting this into a disk image)
(also consider clearing this value out)

## Configure popularity contest
- no

## Software selection
- only standard system utilities

## Install grub
- to master boot record
